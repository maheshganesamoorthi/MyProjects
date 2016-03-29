#include"warmup2.h" 
pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cv = PTHREAD_COND_INITIALIZER;

float find_Diff_InTime(struct timeval fromTime,struct timeval toTime)
{
    float timeDiff_usec = 0;
    float timeDiff=0;
    float total=0;
    timeDiff_usec = toTime.tv_usec-fromTime.tv_usec;
    timeDiff=(toTime.tv_sec-fromTime.tv_sec)*1000000;
    total = (timeDiff + timeDiff_usec)/1000.0;
    return total;
}

void error(const char *str){
    perror(str);
    exit(0);
}
float getTime()
{
    gettimeofday(&getTimeNow, NULL);
    float timeDiff_part1 = 0;
    float timeDiff_part2 = 0;
    float timeDiff_final = 0;
    timeDiff_part2 = getTimeNow.tv_usec-emulationStart.tv_usec;
    timeDiff_part1 = (getTimeNow.tv_sec-emulationStart.tv_sec)*1000000;
    timeDiff_final = (timeDiff_part1 + timeDiff_part2)/1000.0;
    return timeDiff_final;
}

int setCreateFlag(int i, int totalNumOfPacketToArrive, int create_flag){
        if(i>=totalNumOfPacketToArrive)
        {
            create_flag=0;
        }
        return create_flag;
}

int setLoopFlag(int i , My402List *packet402List, int totalNumOfPacketToArrive, int loop_flag){
        if((i>=totalNumOfPacketToArrive && My402ListLength(packet402List)<=0))
        {
            loop_flag=0;
        }
        return loop_flag;
}

void *cancelThread(void *call)
{
    int set_signal=0;
    fflush(stdout);
    sigwait(&set, &set_signal);
    printf("\n\n");
    if(set_signal==2){
        control_Flag=1;
        pthread_cancel(packet_thread);
        pthread_cancel(token_thread);
    }
    pthread_cond_broadcast(&cv);
    return 0;
}

void arrival(){
                int k=0;
                j++;
                fgets(line,sizeof(line),read_file);
                char *token = strtok(line, "\t ");
                while(token != NULL){
                if(k==0){             
                packets[j].packet_InterArrival_Time =  atoi(token);
                 if(packets[j].packet_InterArrival_Time<=0){
                     error("Wrong inter-arrival value\n");
                 }
                 k++;
                }
                else if(k==1){             
                packets[j].token_Required_byPackets =  atoi(token);
                 if(packets[j].token_Required_byPackets<=0){
                     error("Wrong No.of Tokens value\n");
                 }
                 k++;
                }
                else if(k==2){             
                packets[j].packet_Service_Time =  atoi(token);
                 if(packets[j].packet_Service_Time<=0){
                     error("Wrong serviceTime value\n");
                 }
                 k++;
                }
             else{
                error("Malformed input -- error in Command Line Args\n");
             }
             token = strtok(NULL, "\t ");
        }
        if(k != 3)
            error("Error in tfile");                       
}

void moveFromQ1toQ2(){
    My402ListElem *peek_in_Q1;
    peek_in_Q1=My402ListFirst(packet402List);
    if(peek_in_Q1!=NULL)
        {
            int token_Required_forFirstPacket=((packetObj*)peek_in_Q1->obj)->TokensRequired;
            while(My402ListLength(packet402List)!=0 && token_Required_forFirstPacket<=token_count)
            {
                My402ListElem *FirstPacketinQ1;
                FirstPacketinQ1=My402ListFirst(packet402List);
                packetObj *packetToQ2=(packetObj*)FirstPacketinQ1->obj;
                int firstPacketTokenRequired=((packetObj*)FirstPacketinQ1->obj)->TokensRequired;
                if(firstPacketTokenRequired<=token_count)
                {
                    My402ListUnlink(packet402List,FirstPacketinQ1);
                    token_count=token_count-firstPacketTokenRequired;
                    struct timeval packetLeavesQ1Time;
                    gettimeofday(&packetLeavesQ1Time,NULL);
                    sum_timeinQ1=sum_timeinQ1+find_Diff_InTime(packetToQ2->Q1_EntryTime,packetLeavesQ1Time);
                    printf("\n%012.3lfms: p%d leaves Q1 ,time in Q1 = %.3lfms ,token bucket has %d token(s) now",getTime(),packetToQ2->packet_ID,find_Diff_InTime(packetToQ2->Q1_EntryTime,packetLeavesQ1Time),token_count);
                    packetToQ2->timeinQ1=find_Diff_InTime(packetToQ2->Q1_EntryTime,packetLeavesQ1Time);
                    My402ListAppend(thread402List,packetToQ2);
                    gettimeofday(&packetToQ2->Q2_EntryTime,NULL);
                    struct timeval packet_MovesToQ2;
                    gettimeofday(&packet_MovesToQ2,NULL);
                    if(FirstPacketinQ1!=NULL){
                    printf("\n%012.3lfms: p%d enters Q2 ",getTime(),packetToQ2->packet_ID);
                    }
                     if(My402ListLength(thread402List)==1){                    
                        pthread_cond_signal(&cv);
                    }
                }

            }
        }
}

void *packetThread(void *call_packet)
{
    int loop_flag=1;
    int i=1;
    struct timeval start;
    useconds_t usec_for_Lambda;
    useconds_t timeToSleep;
    float EndTimevalue=0;
    struct timeval EndTime;
    int create_flag=1;
    gettimeofday(&start,NULL);
    struct timeval packetEntryTime[5001];
     while(loop_flag)
     {
         struct timeval currentTime;
         if(create_flag==1)
         {
            if(trace_driven==1){            
                arrival();
                usec_for_Lambda=packets[i].packet_InterArrival_Time*1000;
                bucketParameters->P_Value=packets[i].token_Required_byPackets;
             }
            else{            
                usec_for_Lambda=(1/bucketParameters->lambda_Value)*1000000;
                if(usec_for_Lambda>10000000){                
                   usec_for_Lambda=10000000;
                }
            }
             timeToSleep=usec_for_Lambda-EndTimevalue;
             usleep(timeToSleep);
             gettimeofday(&currentTime,NULL);
             packets[i].TokensRequired=bucketParameters->P_Value;
             gettimeofday(&packets[i].StartTime,NULL);
             float timestamp = find_Diff_InTime(start,currentTime);
             prev_timestamp = timestamp - prev_timestamp;
             sum_interArrivalTime_Packet += prev_timestamp;             
             totalNoofPackets++;

             packets[i].packet_ID=i;
                 if(packets[i].TokensRequired>bucketParameters->B)
                {
                    struct timeval currentTimeDropPacket;
                    gettimeofday(&currentTimeDropPacket,NULL);
                    printf("\n%012.3lfms: p%d arrives ,requires %d tokens ,inter arrival-time = %.3lfms, dropped",timestamp,i,packets[i].TokensRequired,prev_timestamp);
                    prev_timestamp = timestamp;
                    packetDropCount++;
                    gettimeofday(&EndTime,NULL);
                    EndTimevalue=(EndTime.tv_sec-currentTime.tv_sec)*1000000+(EndTime.tv_usec-currentTime.tv_usec);
                    create_flag = setCreateFlag(i,bucketParameters->totalPacketToArrive, create_flag);
                    loop_flag = setLoopFlag(i, packet402List, bucketParameters->totalPacketToArrive,loop_flag);
                    i++;
                    continue;
                }
                printf("\n%012.3lfms: p%d arrives ,requires %d tokens ,inter arrival-time = %.3lfms",timestamp,i,packets[i].TokensRequired,prev_timestamp);
                prev_timestamp = timestamp;
                pthread_mutex_lock(&m);
                gettimeofday(&packets[i].Q1_EntryTime,NULL);
                My402ListAppend(packet402List,&packets[i]);
                gettimeofday(&packetEntryTime[i],NULL);
                printf("\n%012.3lfms: p%d enters Q1",getTime(),i);
                pthread_mutex_unlock(&m);
          }
            pthread_mutex_lock(&m);
            moveFromQ1toQ2();
            pthread_mutex_unlock(&m);

            gettimeofday(&EndTime,NULL);
            EndTimevalue=find_Diff_InTime(currentTime,start);
            create_flag = setCreateFlag(i,bucketParameters->totalPacketToArrive, create_flag);
            loop_flag = setLoopFlag(i, packet402List, bucketParameters->totalPacketToArrive,loop_flag);

            if(control_Flag==1)
            {
                packet_exit_Flag=1;
                pthread_mutex_lock(&m);
                pthread_cond_broadcast(&cv);
                pthread_mutex_unlock(&m);
                break;
            }
          i++;
        }
    packetArrivalFlag=0;
    pthread_mutex_lock(&m);
    pthread_cond_broadcast(&cv);
    pthread_mutex_unlock(&m);
    return NULL;
}


void *tokenThread(void *call_token)
{
    int i=1;
    struct timeval start;
    useconds_t usec_for_R;
    useconds_t timeToSleep;
    usec_for_R=(1/bucketParameters->r_Value)*1000000;
    if(usec_for_R>10000000){
     usec_for_R=10000000;
    }

    int flag=1;
    int createTok_flag=1;
    float EndTimevalue=0;
    struct timeval EndTime;
    gettimeofday(&start,NULL);
    while(flag)
    {
        timeToSleep=usec_for_R-EndTimevalue;
        usleep(timeToSleep);
        struct timeval currentTime;
        gettimeofday(&currentTime,NULL);
        int xx=1;
        int incrementLength=0;
        while((packets[xx].packet_ID)!=0){
        incrementLength+=1;
        xx++;
        }
        int structLen = incrementLength;
        pthread_mutex_lock(&m);
        if(structLen>=bucketParameters->totalPacketToArrive && My402ListLength(packet402List)<=0){        
            createTok_flag=0;
        }
        pthread_mutex_unlock(&m);

        if(createTok_flag==1)
        {
            token_count++;
            totalNoofTokens++;
            if(token_count>bucketParameters->B){            
            struct timeval currentTimeDropToken;
            gettimeofday(&currentTimeDropToken,NULL);
            printf("\n%012.3lfms: token t%d arrives, dropped",getTime(),i);
            token_Drop_Count++;
            i++;
            token_count--;            
            gettimeofday(&EndTime,NULL);
            EndTimevalue=find_Diff_InTime(currentTime,EndTime);
            int yy=1;
            int incrementLength1=0;
            while((packets[yy].packet_ID)!=0){
                incrementLength1+=1;
                yy++;
            }
            int structPacketLength1=incrementLength1;

            pthread_mutex_lock(&m);
            if(structPacketLength1>=bucketParameters->totalPacketToArrive && My402ListLength(packet402List)<=0 && packetArrivalFlag==0){
                flag=0;
            }
            pthread_mutex_unlock(&m);
            continue;
            }
            printf("\n%012.3lfms: token t%d arrives,bucket now has %d token(s)",getTime(),i,token_count);
        }

        pthread_mutex_lock(&m);
        moveFromQ1toQ2();
        pthread_mutex_unlock(&m);
        gettimeofday(&EndTime,NULL);
        EndTimevalue=(EndTime.tv_sec-currentTime.tv_sec)*1000000+(EndTime.tv_usec-currentTime.tv_usec);
        EndTimevalue=EndTimevalue/1000;
        int zz=1;
        int incrementLength2=0;
        while((packets[zz].packet_ID)!=0){
           incrementLength2+=1;
           zz++;
         }
        int structPacketLength=incrementLength2;
        if(structPacketLength>=bucketParameters->totalPacketToArrive && My402ListLength(packet402List)<=0){
            flag=0;
        }
        i++;
    }
    pthread_cond_broadcast(&cv);
    return NULL;
}

void control_Wait(My402List *packet402List, My402List *thread402List){
    if(My402ListLength(packet402List)>0){
        My402ListElem *temp;
        temp=packet402List->anchor.next;
        int counter=0;
        while(counter<My402ListLength(packet402List)){
            My402ListAppend(packets_RemovedFromQ1,&((packetObj*)temp->obj)->packet_ID);
            temp=temp->next;
            counter++;
        }
        My402ListUnlinkAll(packet402List);
    }
    if(My402ListLength(thread402List)>0){
        My402ListElem *packets_inQ2;
        packets_inQ2=thread402List->anchor.next;
        int counter1=0;
        while(counter1<My402ListLength(thread402List)){
            My402ListAppend(packets_RemovedFromQ2,&((packetObj*)packets_inQ2->obj)->packet_ID);
            packets_inQ2=packets_inQ2->next;
            counter1++;
        }
        My402ListUnlinkAll(thread402List);
    }
}

void *serverThread(void *call_server)
{
    struct timeval start;
    gettimeofday(&start,NULL);
    int server_flag=1;
    useconds_t usec_for_Mu;
    while(server_flag==1){
        pthread_mutex_lock(&m);
        while(My402ListEmpty(thread402List)){
            pthread_cond_wait(&cv,&m);
            if(My402ListLength(thread402List)<=0 && packetArrivalFlag==0 && My402ListLength(packet402List)<=0){
                server_flag=0;
                break;
            }
            if(control_Flag==1){
                control_Wait(packet402List, thread402List);
                server_exit_flag=1;
                break;
            }
        }
        pthread_mutex_unlock(&m);
        if(!(My402ListEmpty(thread402List))){
            struct timeval currentTimeinQueue;
            struct timeval PacketEnterServerTime;
            pthread_mutex_lock(&m);
            My402ListElem *FirstPacketinQueue2;
            FirstPacketinQueue2=My402ListFirst(thread402List);
            packetObj * packets_To_Be_Completed = (packetObj*)FirstPacketinQueue2->obj;
             if(trace_driven==1){
                usec_for_Mu=packets[((packetObj*)FirstPacketinQueue2->obj)->packet_ID].packet_Service_Time;
                usec_for_Mu=usec_for_Mu*1000;
            }
            else{
                usec_for_Mu=(1/bucketParameters->mu_Value)*1000000;
                if(usec_for_Mu>10000000){
                usec_for_Mu=10000000;
                }
            }
            My402ListUnlink(thread402List,FirstPacketinQueue2);
            gettimeofday(&currentTimeinQueue,NULL);
            sum_timeinQ2=sum_timeinQ2+find_Diff_InTime(packets_To_Be_Completed->Q2_EntryTime,currentTimeinQueue);
            printf("\n%012.3lfms: p%d leaves Q2,time in Q2 = %.3lfms",getTime(),packets_To_Be_Completed->packet_ID,find_Diff_InTime(packets_To_Be_Completed->Q2_EntryTime,currentTimeinQueue));
            gettimeofday(&PacketEnterServerTime,NULL);
            printf("\n%012.3lfms: p%d begins service at S%d requesting %.3lfms of service",getTime(),packets_To_Be_Completed->packet_ID,*((int*)call_server),usec_for_Mu/1000.0);
            packets_To_Be_Completed->server_ID=*((int*)call_server);
            packets_To_Be_Completed->timeinQ2=find_Diff_InTime(packets_To_Be_Completed->Q2_EntryTime,currentTimeinQueue);
            pthread_mutex_unlock(&m);
            usleep(usec_for_Mu);
            struct timeval PacketServiceTime;
            float timeinServer=0;
            gettimeofday(&PacketServiceTime,NULL);
            timeinServer=find_Diff_InTime(PacketEnterServerTime,PacketServiceTime);
            sum_ServiceTime=sum_ServiceTime+timeinServer;
            packets_To_Be_Completed->serviceTime=timeinServer;
            // usleep(10000);
            pthread_mutex_lock(&m);
            printf("\n%012.3lfms: p%d departs from S%d,service time = %.3lfms,time in system = %.3lfms",getTime(),packets_To_Be_Completed->packet_ID,*((int*)call_server),find_Diff_InTime(PacketEnterServerTime,PacketServiceTime),find_Diff_InTime(packets_To_Be_Completed->StartTime,PacketServiceTime));
            packets_To_Be_Completed->serviceExitTime=find_Diff_InTime(packets_To_Be_Completed->StartTime,PacketServiceTime);
            My402ListAppend(completed_PacketsList,packets_To_Be_Completed);
            pthread_mutex_unlock(&m);
        }
            int ww=1;int incrementLength3=0;
            while((packets[ww].packet_ID)!=0){
               incrementLength3+=1;
               ww++;
             }
            int structPacketLength=incrementLength3;
            if(structPacketLength>=bucketParameters->totalPacketToArrive && My402ListLength(thread402List)<=0 && packetArrivalFlag==0 && My402ListLength(packet402List)<=0){
                server_flag=0;
            }
            if(control_Flag==1){
                control_Wait(packet402List, thread402List);
                server_exit_flag=1;
                break;
            }
    }
    return NULL;
}

void checkCompletedPackets(float totalTime_Q1, float totalTime_Q2,float totalServiceTime_S1,float totalServiceTime_S2,float totalserviceExitTime,float totalTimeSquareInSystem  ){
    double variance=0;
    double standard_Deviation=0;
    if(My402ListLength(completed_PacketsList)>0){
        variance=(totalTimeSquareInSystem/My402ListLength(completed_PacketsList))-(pow((totalserviceExitTime/My402ListLength(completed_PacketsList)),2));
        if(variance<=0){
         standard_Deviation=0;
        }
        else{
            standard_Deviation=sqrt(variance);
        }
    }
    else{
        variance=0;
        standard_Deviation=0;
    }
    if(My402ListLength(completed_PacketsList)){
        printf("\n\taverage number of packets in Q1 = %.6g",(totalTime_Q1/find_Diff_InTime(emulationStart,emulationEnds)));
        printf("\n\taverage number of packets in Q2 = %.6g",(totalTime_Q2/find_Diff_InTime(emulationStart,emulationEnds)));
        printf("\n\taverage number of packets in S1 = %.6g",(totalServiceTime_S1/find_Diff_InTime(emulationStart,emulationEnds)));
        printf("\n\taverage number of packets in S2 = %.6g",(totalServiceTime_S2/find_Diff_InTime(emulationStart,emulationEnds)));
        printf("\n");
    }
    else{
        printf("\n\taverage number of packets in Q1 = 0");
        printf("\n\taverage number of packets in Q2 = 0");
        printf("\n\taverage number of packets in S1 = 0");
        printf("\n\taverage number of packets in S2 = 0");
        printf("\n");
    }
    if(My402ListLength(completed_PacketsList)>0){
        printf("\n\taverage time a packet spent in system = %.6g",(totalserviceExitTime/My402ListLength(completed_PacketsList))/1000);
       // printf("\n\tstandard deviation for time spent in system = %.6lf",standard_Deviation/1000);
        printf("\n\tstandard deviation for time spent in system = %.6g",standard_Deviation/1000);
    }
    else{
        printf("\n\taverage time a packet spent in system = N/A. No Packets in the System");
        printf("\n\tstandard deviation for time spent in system = N/A. No Packets in the System");
    } 
}

void print_statistics()
{
    My402ListElem *temp;
    int i=0;    
    float totalTime_Q1=0;
    float totalTime_Q2=0;
    float totalServiceTime_S1=0;
    float totalServiceTime_S2=0;
    float totalserviceExitTime=0;
    float totalTimeSquareInSystem=0;
    temp=completed_PacketsList->anchor.next;
    printf("\n\nStatistics:");
    printf("\n\taverage packet inter-arrival time = %.6g",(sum_interArrivalTime_Packet/bucketParameters->totalPacketToArrive)/1000);
    if(My402ListLength(completed_PacketsList)>0){
        printf("\n\taverage packet service time = %.6g\n",(sum_ServiceTime/My402ListLength(completed_PacketsList))/1000);
    }
    else{
        printf("\n\taverage packet service time = N/A. No Packet Count\n");
    }
    while(i<My402ListLength(completed_PacketsList))
        {
            totalTime_Q1=totalTime_Q1+((packetObj*)temp->obj)->timeinQ1;
            totalTime_Q2=totalTime_Q2+((packetObj*)temp->obj)->timeinQ2;
            if(((packetObj*)temp->obj)->server_ID==1){
                totalServiceTime_S1=totalServiceTime_S1+((packetObj*)temp->obj)->serviceTime;
            }
            else if(((packetObj*)temp->obj)->server_ID==2){
                totalServiceTime_S2=totalServiceTime_S2+((packetObj*)temp->obj)->serviceTime;
            }
            totalserviceExitTime=totalserviceExitTime+((packetObj*)temp->obj)->serviceExitTime;
            totalTimeSquareInSystem=totalTimeSquareInSystem+pow(((packetObj*)temp->obj)->serviceExitTime,2);
            temp=temp->next;
            i++;
        }

    checkCompletedPackets(totalTime_Q1,totalTime_Q2,totalServiceTime_S1,totalServiceTime_S2,totalserviceExitTime,totalTimeSquareInSystem);
    float tokenDropProb=0,packetDropProb=0;
    if(totalNoofTokens!=0){
        tokenDropProb=(float)token_Drop_Count/(float)totalNoofTokens;
        printf("\n\n\ttoken drop probability = %.6g",tokenDropProb);
    }
    else{
        printf("\n\n\ttoken drop probability = Nil");
    }
    if(totalNoofPackets!=0){
        packetDropProb=(float)packetDropCount/(float)totalNoofPackets;
        printf("\n\tpacket drop probability = %.6g\n",packetDropProb);
    }
    else{
        printf("\n\tpacket drop probability = Nil");
    }
}

double stringToDouble(char *str,char *valueOfArg1) {
    char *tmp = NULL;
    double result = strtod(str, &tmp);
    if(result <= 0 || *tmp != '\0') {
        printf("Malformed Command Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] . Invalid %s value given as commandline argument\n", valueOfArg1);
        exit(-1);
    }
    return result;
}

unsigned int stringToPosint(char *str, char *valueOfArg) {
    char *tmp = NULL;
    long long result = strtoll(str, &tmp, 10);
    if(result <= 0 || result > 2147483647 || *tmp != '\0') {
        printf("Malformed Command Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] . Invalid %s value given as commandline argument\n", valueOfArg);
        exit(-1);
    }
    return result;
}

char* validations(int argc,char *argv[], char *fileInput){
    int a=1;
    struct stat fdir;
    if(argc%2 == 0)
    error("Malformed Command Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] \nWrong No.of Arguments!!");

    for(a=1;a<argc;a+=2){
          if(!strcmp(argv[a],"-lambda")){
              bucketParameters->lambda_Value=stringToDouble(argv[a+1], "lambda");
              if(bucketParameters->lambda_Value<=0) error("malformed command Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] \n");
          }
          else if(!strcmp(argv[a],"-mu")){
              bucketParameters->mu_Value=stringToDouble(argv[a+1], "mu");      
              if(bucketParameters->mu_Value<=0) error("malformed command Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] \n");
          }
          else if(!strcmp(argv[a],"-r")){
              bucketParameters->r_Value=stringToDouble(argv[a+1], "r");
              if(bucketParameters->r_Value<=0) error("malformed command Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] \n");
          }
          else if(!strcmp(argv[a],"-B")){
              bucketParameters->B=stringToPosint(argv[a+1], "B");
              if(bucketParameters->B==0) error("malformed command\n");
              if(bucketParameters->B <= 0 || bucketParameters->B > 2147483647) error("malformed command wrong BucketSize Value Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] \n");
          }
          else if(!strcmp(argv[a],"-P")){
              bucketParameters->P_Value=stringToPosint(argv[a+1], "P");
              if(bucketParameters->P_Value==0) error("malformed command\n");
              if(bucketParameters->P_Value <= 0 || bucketParameters->P_Value > 2147483647) error("malfored command wrong P-Value Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] \n");
          }
          else if(!strcmp(argv[a],"-n")){
              bucketParameters->totalPacketToArrive=stringToPosint(argv[a+1], "n");
              if(bucketParameters->totalPacketToArrive==0) error("malformed command\n");
              if(bucketParameters->totalPacketToArrive <= 0 || bucketParameters->totalPacketToArrive > 2147483647) error("malformed command wrong num-Value Wrong Usage Information !!warmup2 [-lambda lambda] [-mu mu] [-r r] [-B B] [-P P] [-n num] [-t tsfile] \n");
          }
          else if(!strcmp(argv[a],"-t")){
                if( stat(argv[a+1],&fdir) == 0 ) {
                    if (!S_ISREG(fdir.st_mode) ) { 
                    error("It is not a file | Can be a directory\n"); 
                    }
                 } 
                read_file=fopen(argv[a+1],"r"); 
                if (read_file == NULL) { 
                    printf("Input file %s does not exist\n",argv[a+1] ); 
                    error("Error Opening the file | file does not exist"); 
                } 
                else { 
                    fileInput=argv[a+1]; 
                    trace_driven=1; 
                }
            }
          else{
                error("\nInvalid input options\t CommandLine Args doesn't match\n");
          }
        }
    return fileInput;
}

int main(int argc, char *argv[])
{
    
    bucketParameters=malloc(sizeof(tokenBucketObj));
    incoming_Packet_List=(My402List *)malloc(sizeof(My402List));
    My402ListInit(incoming_Packet_List);
    fileInput=validations(argc,argv,fileInput);

    if(trace_driven==1){
        int j=0;
        read_file =fopen(fileInput,"r");
        if (read_file == NULL) {
            perror("Error ");
            return 1;
        }
        fgets(line,sizeof(line),read_file);
        char *token = strtok(line,"\t ");
        while(token != NULL){
            if(j==0){             
                 bucketParameters->totalPacketToArrive=atoi(token);
                 if(bucketParameters->totalPacketToArrive==0){
                     error("\nInput file is not in the right format\n");
                 }
                 j++;
             }
             else{
                error("Malformed input -- error in 1st Line\n");
             }
             token = strtok(NULL, "\t ");
        }
        if(bucketParameters->totalPacketToArrive <= 0 || bucketParameters->totalPacketToArrive>= 2147483647)
            error("Malformed input -- error in 1st Line\n");
    }
if(trace_driven!=1)
{
    if(bucketParameters->lambda_Value==0){
        bucketParameters->lambda_Value=1;   }
    if(bucketParameters->mu_Value==0){
        bucketParameters->mu_Value=0.35;    }
    if(bucketParameters->r_Value==0){
        bucketParameters->r_Value=1.5;  }
    if(bucketParameters->B==0){
        bucketParameters->B=10; }
    if(bucketParameters->P_Value==0){
        bucketParameters->P_Value=3;    }
    if(bucketParameters->totalPacketToArrive==0 || bucketParameters->totalPacketToArrive > 2147483647 ){
        bucketParameters->totalPacketToArrive=20;
    }
}

    if(bucketParameters->B==0){
        bucketParameters->B=10; }
     if(bucketParameters->r_Value==0){
        bucketParameters->r_Value=1.5;  }

    printf(" Emulation Parameters:\n");
    printf("\tnumber to arrive = %d\n",bucketParameters->totalPacketToArrive);
    if(trace_driven!=1){
    printf("\tlambda = %.6g\n",bucketParameters->lambda_Value);
    printf("\tmu = %.6g\n",bucketParameters->mu_Value);
    }
    printf("\tr = %.6g\n",bucketParameters->r_Value);
    printf("\tB = %d\n",bucketParameters->B);
    if(trace_driven!=1){
    printf("\tP = %d\n",bucketParameters->P_Value);
    }
    if(trace_driven==1){
    printf("\ttsfile = %s\n",fileInput);
    }

    sigemptyset(&set);
    sigaddset(&set, SIGINT);
    sigprocmask(SIG_BLOCK, &set, 0);
    packet402List = (My402List *)malloc(sizeof(My402List));
    thread402List = (My402List *)malloc(sizeof(My402List));
    completed_PacketsList=(My402List *)malloc(sizeof(My402List));
    packets_RemovedFromQ1=(My402List *)malloc(sizeof(My402List));
    packets_RemovedFromQ2=(My402List *)malloc(sizeof(My402List));
    int Server1=1;int Server2=2;
    My402ListInit(packet402List);
    My402ListInit(thread402List);
    My402ListInit(packets_RemovedFromQ1);
    My402ListInit(completed_PacketsList);
    My402ListInit(packets_RemovedFromQ2);
    gettimeofday(&emulationStart,NULL);
    printf("%012.3lfms: emulation begins",find_Diff_InTime(emulationStart,emulationStart));
    int call = 0;

    if(pthread_create(&packet_thread, NULL, packetThread, &packet402List)) {
        fprintf(stderr, "Error creating Packet thread\n");
        return 1;
    }
    if(pthread_create(&token_thread, NULL, tokenThread, &call)) {
        fprintf(stderr, "Error creating Token thread\n");
        return 1;
    }
    if(pthread_create(&Server1_thread, NULL, serverThread, &Server1)) {
        fprintf(stderr, "Error creating Server1 thread\n");
        return 1;
    }
    if(pthread_create(&Server2_thread, NULL, serverThread, &Server2)) {
        fprintf(stderr, "Error creating Server2 thread\n");
        return 1;
    }
    if(pthread_create(&Cancel_thread, NULL, cancelThread, &call)) {
        fprintf(stderr, "Error creating Cancel thread\n");
        return 1;
    }
    pthread_join(packet_thread,NULL);
    pthread_join(token_thread,NULL);
    pthread_join(Server1_thread,NULL);
    pthread_join(Server2_thread,NULL);
    gettimeofday(&emulationEnds,NULL);
    int h=0;int h1=0;
    My402ListElem *tempRemovedQ1,*tempRemovedQ2;
    tempRemovedQ1=packets_RemovedFromQ1->anchor.next;
    tempRemovedQ2=packets_RemovedFromQ2->anchor.next;
    while(h<My402ListLength(packets_RemovedFromQ1)){
            printf("\n%012.3lfms: p%d removed from Q1",getTime(),*((int*)tempRemovedQ1->obj));
            tempRemovedQ1=tempRemovedQ1->next;
            h++;
        }
    while(h1<My402ListLength(packets_RemovedFromQ2)){
            printf("\n%012.3lfms: p%d removed from Q2",getTime(),*((int*)tempRemovedQ2->obj));
            tempRemovedQ2=tempRemovedQ2->next;
            h1++;
        }
    printf("\n%012.3lfms: emulation ends",find_Diff_InTime(emulationStart,emulationEnds));  
    print_statistics();
    return 0;
}
