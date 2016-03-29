#include <pthread.h>
#include <stdio.h>
#include <sys/time.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <math.h>
#include <signal.h>
#include "my402list.h"
#include <ctype.h>
#include <sys/stat.h>
#include"cs402.h"

int setCreateFlag(int i, int totalNumOfPacketToArrive, int create_flag);
int setLoopFlag(int i , My402List *packet402List, int totalNumOfPacketToArrive, int loop_flag);
typedef struct struct_tokenBucket
{
    unsigned int totalPacketToArrive;
    double lambda_Value;
    double mu_Value;
    double r_Value;
    unsigned int B;
    unsigned int P_Value;
}tokenBucketObj;

tokenBucketObj *bucketParameters;
typedef struct struct_packet
{
    int TokensRequired;
    float serviceTime;
    struct timeval Q1_EntryTime;
    struct timeval Q2_EntryTime;
    float timeinQ1;
    float timeinQ2;
    float serviceExitTime;
    int packet_InterArrival_Time;
    int packet_Service_Time;
    int token_Required_byPackets;
    struct timeval StartTime;
    int packet_ID;
    int server_ID;
}packetObj;


int j=0;
char *data[1024];
char line[1024];  
pthread_t token_thread;
pthread_t packet_thread;
pthread_t Server1_thread;
pthread_t Server2_thread;
pthread_t Cancel_thread;
struct timeval emulationStart;
struct timeval emulationEnds;
struct timeval getTimeNow;
My402List * packet402List;
My402List * thread402List;
My402List * completed_PacketsList;
My402List * incoming_Packet_List;
My402List * packets_RemovedFromQ1;
My402List * packets_RemovedFromQ2;
char *fileInput;
FILE *read_file;
sigset_t set;
int control_Flag=0;
int trace_driven=0;
int packet_exit_Flag=0;
int token_Drop_Count=0;
int totalNoofTokens=0;
int totalNoofPackets=0;
int packetDropCount=0;
int packetArrivalFlag=1;
int server_exit_flag=0;
int token_count;
float sum_interArrivalTime_Packet=0;
float prev_timestamp = 0;
float sum_ServiceTime=0;
float sum_timeinQ1=0;
float sum_timeinQ2=0;
packetObj packets[5001];
