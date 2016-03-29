#include <stdio.h>
#include "cs402.h"
#include "my402list.h"
#include <string.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

void BubbleSortForwardList(My402List *pList);
void BubbleForward(My402List *pList, My402ListElem **pp_elem1, My402ListElem **pp_elem2);
void printFormatting(My402List *p);
char *formatNumber(long num);
long afterDecimalPrint(long amount);


typedef struct My402InputListStruct{
    char trans_type;
    char trans_date_char[25];
    unsigned int trans_date_int;
    long before_precision;
    long after_precision;
    long before_decimal;
    char after_decimal_string[5];
    float after_decimal;
    char desc[1024];
}inputListStructObject;


int main(int argc, char* argv[]){

    char line[1026];
    char date[34];
    FILE *file;
    char *readInput;

    if(argc == 1){
        fprintf(stderr, "Only one Argument. warmup1 sort [file]\n");
        exit(0);
    }

    if(argc<2 || argc>3 || (strncmp(argv[1], "sort", sizeof(argv[1])) != 0)) {
        fprintf(stderr, "Argument didn't Match. warmup1 sort [file]\n");
        exit(0);
    }


    if(argv[2] == NULL){
       // fprintf(stderr,"Reading from STDIN !!\n");
        file = stdin;
        fseek(file,0,SEEK_END);
        if(ftell(file) == 0){
        fprintf(stderr, "Input File is Empty \n");
        exit(0);
        }
        fseek(file,0,SEEK_SET);
    }
    else if(argc == 3 && argv[2] != NULL){
        readInput = argv[2];
        file = fopen(readInput,"r");
       if(file == NULL){
            //fprintf(stderr, "Error: File Not in Exxpected Format\n");
            perror("ERROR:");
            printf("\n");
            exit(0);
        }
        struct stat sb1;
        if(stat(readInput, &sb1) == 0 && S_ISDIR(sb1.st_mode)){
            printf(" %s Error Accessing Directory\n", readInput);
            exit(0);
        }
        fseek(file,0,SEEK_END);
        if(ftell(file) == 0){
        fprintf(stderr, "Input File is Empty \n");
        exit(0);
        }
        fseek(file,0,SEEK_SET);
    }
    else{
        fprintf(stderr, "Command Line Argrument is Malformed \n");
        exit(0);
    }


    if(!file){
        perror("ERROR: with File\n");
        exit(0);
    }
    My402List *p = malloc(sizeof(My402List));
    My402ListInit(p);

    int while_count=0;
    while(fgets(line, sizeof(line), file) != '\0'){
        while_count++;
    inputListStructObject *structObject =  malloc(sizeof(inputListStructObject));
        int flag=0;
        int tab_count = 0; int i=0;
        //printf("%s\n", line);


        for(i=0;line[i]!='\0';++i)
            {
                if(line[i]=='\t')
                    tab_count++;
            }

        if(tab_count != 3){
            fprintf(stderr, "Incorrect tfile Format.. Check the No.of Tabs \n");
            exit(0);
        }

        if(strlen(line) > 1024){
            fprintf(stderr, "Input Line greater than 1024 \n");
            exit(0);
        }

        char *token = strtok(line, "\t");
        sscanf(token,"%c",&structObject->trans_type);
        char checkTransType =  structObject->trans_type;
        if(checkTransType != '+' && checkTransType != '-'){
            fprintf(stderr, "Error in Transaction Type, only +/- allowed\n");
            exit(0);
        }

        int currTime = (int)time(NULL);
        token = strtok(NULL, "\t");
        sscanf(token, "%d", &structObject->trans_date_int);
        flag =  strlen(token);
        if(flag >= 11){
            fprintf(stderr, "Error Transaction time Length more than 10 characters\n");
            exit(0);
        }
        if(structObject->trans_date_int > currTime){
            fprintf(stderr, "Error Greater than Current Time \n");
            exit(0);
        }

        My402ListElem *my402Elem = NULL;
        for(my402Elem = My402ListFirst(p); my402Elem != NULL; my402Elem=My402ListNext(p,my402Elem)){
            inputListStructObject *structObject2 =(inputListStructObject *)(my402Elem->obj);
            if( structObject->trans_date_int == structObject2->trans_date_int){
                fprintf(stderr, "Found IDENTICAL TIMESTAMP\n");
                exit(0);
            }
        }

        time_t format = (time_t)(structObject->trans_date_int);
        strncpy(date, ctime(&format), sizeof(date));
        strncpy(structObject->trans_date_char, date, sizeof(structObject->trans_date_char));

        token =  strtok(NULL, "\t");
        sscanf(token, "%ld.%ld" , &structObject->before_precision, &structObject->after_precision);
        sscanf(token, "%ld.%s" , &structObject->before_decimal, structObject->after_decimal_string);
        structObject->after_decimal =  ((float)atoi(structObject->after_decimal_string))/100;
        if(strlen(structObject->after_decimal_string) > 2){
            fprintf(stderr, "Only 2 digits expected after the decimal");
            exit(0);
        }
        if(structObject->before_decimal >= 10000000){
            fprintf(stderr, "Only 7 digits expected before the decimal");
            exit(0);
        }

        token = strtok(NULL, "\n");
         if(token == NULL){
        fprintf(stderr, "Description is EMPTY !");
        exit(0);
      }
       for (; *token && ' ' == *token; ++token);
       char *dummy = token;
       if( dummy == NULL || *dummy == '\0' ){
        fprintf(stderr, "Description is EMPTY !");
        exit(0);
      }

        strncpy(structObject->desc, token, sizeof(structObject->desc));
        int listInsertStatus = 0;
        listInsertStatus = My402ListAppend(p, (void *)structObject);
        if(!listInsertStatus){
            fprintf(stderr, "Couldn't insert into List");
            exit(0);
        }
    }
    if(while_count == 0){
        printf("Input file %s is a directory\n", readInput);
        exit(0);
    }
    BubbleSortForwardList(p);
    printFormatting(p);
    free(p);
    return 0;
}


/*The Below Code Segment for Sort has been referred from Professor. William Cheng*/
void BubbleSortForwardList(My402List *pList)
{
    My402ListElem *elem=NULL;
    int i=0;
    int num_members =  My402ListLength(pList);
    for (i=0; i < num_members; i++) {
        int j=0, something_swapped=FALSE;
        My402ListElem *next_elem=NULL;

        for (elem=My402ListFirst(pList), j=0; j < num_members-i-1; elem=next_elem, j++) {
            inputListStructObject *cur_val=(inputListStructObject *)(elem->obj), *next_val=0;

            next_elem=My402ListNext(pList, elem);
            next_val = (inputListStructObject *)(next_elem->obj);

            if (cur_val->trans_date_int > next_val->trans_date_int) {
                BubbleForward(pList, &elem, &next_elem);
                something_swapped = TRUE;
            }
        }
        if (!something_swapped) break;
    }
}


void BubbleForward(My402List *pList, My402ListElem **pp_elem1, My402ListElem **pp_elem2)
{
    My402ListElem *elem1=(*pp_elem1), *elem2=(*pp_elem2);
    void *obj1=elem1->obj, *obj2=elem2->obj;
    My402ListElem *elem1prev=My402ListPrev(pList, elem1);
    My402ListElem *elem2next=My402ListNext(pList, elem2);
    My402ListUnlink(pList, elem1);
    My402ListUnlink(pList, elem2);
    if (elem1prev == NULL) {
        (void)My402ListPrepend(pList, obj2);
        *pp_elem1 = My402ListFirst(pList);
    } else {
        (void)My402ListInsertAfter(pList, obj2, elem1prev);
        *pp_elem1 = My402ListNext(pList, elem1prev);
    }
    if (elem2next == NULL) {
        (void)My402ListAppend(pList, obj1);
        *pp_elem2 = My402ListLast(pList);
    } else {
        (void)My402ListInsertBefore(pList, obj1, elem2next);
        *pp_elem2 = My402ListPrev(pList, elem2next);
    }
}
/*End of Code Segment (Referred from Professor. William Cheng)*/


void printFormatting(My402List *p){
    fprintf(stdout, "+-----------------+--------------------------+----------------+----------------+\n");
	fprintf(stdout, "|       Date      | Description              |         Amount |        Balance |\n");
	fprintf(stdout, "+-----------------+--------------------------+----------------+----------------+\n");
	My402ListElem *elem = NULL;
	long actualCost = 0;
	double balanceAmt = 0.0;

	for(elem = My402ListFirst(p); elem!=NULL; elem=My402ListNext(p,elem)){
	    inputListStructObject *structObject3 =(inputListStructObject *)(elem->obj);
	    fprintf(stdout, "| %.10s %.4s ", structObject3->trans_date_char, &structObject3->trans_date_char[20]);
	    fprintf(stdout, "| %-24.24s ",(structObject3->desc));
	    if(structObject3->trans_type == '-'){
            balanceAmt = balanceAmt - (structObject3->before_decimal + structObject3->after_decimal);
            actualCost = actualCost - ((structObject3->before_precision * 100) + structObject3->after_precision);

            if(structObject3->before_decimal >= 10000000){
                fprintf(stdout, "|   ?,???,???.?? ");
            }
            else{
                long cost =  ((structObject3->before_precision * 100) + structObject3->after_precision)/100;
                fprintf(stdout, "| (%9s.%.2ld) ", formatNumber(cost), structObject3->after_precision);
            }
	    }

	    else{
	        float value = ((float)structObject3->before_decimal)*1.0;
            actualCost = actualCost + ((structObject3->before_precision * 100) + structObject3->after_precision);
            balanceAmt = balanceAmt + (value + structObject3->after_decimal);

            if(structObject3->before_decimal >= 10000000){
                fprintf(stdout, "|   ?,???,???.?? ");
            }
            else{
                fprintf(stdout, "|%11s.%.2ld  ", formatNumber(structObject3->before_decimal), structObject3->after_precision);
            }

	    }

	    if(balanceAmt > 10000000.00){
            fprintf(stdout, "|   ?,???,???.?? |\n");
	    }
	    else if( balanceAmt < 0.0 && abs(balanceAmt) > 10000000.00){
	        char strtemp[] = "?,???,???.??";
            fprintf(stdout, "| (%s) |\n", strtemp);
	    }
	    else{
            if(actualCost > 0){
                fprintf(stdout, "|%11s.%.2ld  |\n", formatNumber(actualCost/100), afterDecimalPrint(actualCost));
            }
            else{
                fprintf(stdout, "| (%9s.%.2d) |\n", formatNumber(-1*(actualCost/100)), abs(afterDecimalPrint(actualCost)));
            }
	    }

	}
	fprintf(stdout, "+-----------------+--------------------------+----------------+----------------+\n");

}


char *formatNumber(long actualCost)
{
	int digit = 0;
	int i=0, j = 0;
	int length = 0;
	long temp = actualCost;
	while(temp != 0)
	{
		temp= temp/10;
		length++;
	}

	int temp_length = length;
    char *str = malloc(length+1);
    j = length + 1 + (length % 3 != 0 ? length/3 : length/3 - 1);
	char *new_str = malloc(j);
	while( actualCost != 0)
	{
		digit = actualCost%10;
		actualCost = actualCost/10;
		str[--temp_length] = digit+48;
	}
	str[length] = '\0';
	new_str[--j] = '\0';
	int ctr = 0;
	if(length < 4)
		return str;

	for(i=length-1; i >= 0 ; i--)
	{
		new_str[--j] = str[i];
		ctr++;
		if(ctr == 3 && i != 0)
		{
			new_str[--j] = ',';
			ctr=0;
		}
	}
	return new_str;
}


long afterDecimalPrint(long amount)
{
    long afterDecimal = amount % 100;
	return afterDecimal;
}








