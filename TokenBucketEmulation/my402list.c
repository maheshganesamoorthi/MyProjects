#include "my402list.h"
#include "cs402.h"
#include <stdio.h>
#include <stdlib.h>

int My402ListInit(My402List* p)
{
    p->anchor.next = NULL;
    p->anchor.prev = NULL;
    p->anchor.obj = NULL;
    p->num_members = 0;
    return 1;
}

int  My402ListLength(My402List* p)
{
    return p->num_members;
}

int  My402ListEmpty(My402List* p)
{
    int temp = 0;
    if (p->anchor.next == NULL && p->anchor.prev == NULL){
        temp = 1;
    }
    return temp;
}


My402ListElem *My402ListFirst(My402List* p)
{
    My402ListElem *elem = NULL;
    if (p->anchor.next){
        elem = p->anchor.next;
    }
    return elem;
}


My402ListElem *My402ListLast(My402List* p)
{
    My402ListElem *elem = NULL;
    if (p->anchor.prev){
        elem = p->anchor.prev;
    }
    return elem;
}

My402ListElem *My402ListNext(My402List* p, My402ListElem* Elem)
{
    My402ListElem *elem = NULL;
    if(Elem->next == (&p->anchor)){
        elem = NULL;
    }
    else{
         elem = Elem->next;
    }
    return elem;
}

My402ListElem *My402ListPrev(My402List* p, My402ListElem* Elem)
{
    My402ListElem *elem = NULL;
    if(Elem->prev == (&p->anchor)){
        elem = NULL;
    }
    else{
         elem = Elem->prev;
    }
    return elem;
}

int  My402ListAppend(My402List* p, void* data)
{
    My402ListElem *node = malloc(sizeof(My402ListElem));
    int temp = 0;
    if(!node)
    {
        fprintf(stderr,"Error! Could not Append\n");
        return temp;
    }
    node->obj = data;
    temp = 1;
    p->num_members++;
    if (My402ListEmpty(p)){
        p->anchor.next = node;
        p->anchor.prev = node;
        node->next = (&p->anchor);
        node->prev = (&p->anchor);
    }
    else{
        My402ListElem *lastNode = My402ListLast(p);
        lastNode->next = node;
        node->next = (&p->anchor);
        p->anchor.prev = node;
        node->prev = lastNode;
    }
    return temp;
}

int  My402ListPrepend(My402List* p, void* data)
{
    My402ListElem * node = malloc(sizeof(My402ListElem));
    int temp = 0;
    if(!node){
        fprintf(stderr, "Error! Could not Prepend \n");
        return temp;
    }
    node->obj = data;
    temp = 1;
    p->num_members++;
    if(My402ListEmpty(p)){
        p->anchor.next = node;
        p->anchor.prev = node;
        node->next = (&p->anchor);
        node->prev = (&p->anchor);
    }
    else{
        My402ListElem *firstNode = My402ListFirst(p);
        p->anchor.next = node;
        node->next = firstNode;
        firstNode->prev = node;
        node->prev = (&p->anchor);
    }
    return temp;
}

int  My402ListInsertBefore(My402List* p, void* data, My402ListElem* elem)
{
    int temp = 0;
    if(elem == NULL){
        temp = My402ListPrepend(p, data);
    }
    else{
        My402ListElem * node = malloc(sizeof(My402ListElem));
        if(!node)
        {
            fprintf(stderr, "Error! Could not InsertBefore\n");
            return temp;
        }
        node->obj = data;
        temp = 1;
        p->num_members++;
        if(My402ListEmpty(p)){
            temp = My402ListPrepend(p, data);
        }
        else{
            My402ListElem *prevNode = elem->prev;
            prevNode->next = node;
            node->next = elem;
            elem->prev = node;
            node->prev = prevNode;
        }
    }
    return temp;
}


int  My402ListInsertAfter(My402List* p, void* data, My402ListElem* elem)
{
    int temp = 0;
    if(elem == NULL){
        temp = My402ListAppend(p, data);
    }
    else{
        My402ListElem * node = malloc(sizeof(My402ListElem));
        if(!node)
        {
            fprintf(stderr, "Error! Could not InsertAfter \n");
            return temp;
        }
        node->obj = data;
        temp = 1;
        p->num_members++;
        if(My402ListEmpty(p)){
            temp = My402ListAppend(p, data);
        }
        else
        {
            My402ListElem *nextNode = elem->next;
            elem->next = node;
            node->next = nextNode;
            nextNode->prev = node;
            node->prev = elem;
        }
    }
    return temp;
}



My402ListElem *My402ListFind(My402List* p, void* data)
{
    My402ListElem *findElem = NULL;
    My402ListElem *elem = NULL;

    if(My402ListEmpty(p)){
        return findElem;
    }
    for(elem=My402ListFirst(p); elem!=NULL; elem=My402ListNext(p, elem)){
        if((elem->obj) == data){
            findElem = elem;
        }
    }
    return findElem;
}


void My402ListUnlink(My402List* p, My402ListElem* elem){
    if(My402ListEmpty(p)){
        return;
    }

    if( (elem->prev == &(p->anchor)) && (elem->next == &(p->anchor)) ){
        p->anchor.prev = NULL;
        p->anchor.next = NULL;
        p->num_members--;
        free(elem);
    }
    else{
        My402ListElem *nextElem = NULL;
        My402ListElem *prevElem = NULL;
        nextElem = elem->next;
        prevElem = elem->prev;
        prevElem->next = nextElem;
        nextElem->prev = prevElem;
        p->num_members--;
        free(elem);
    }
}

void My402ListUnlinkAll(My402List* p){

        My402ListElem *elem = NULL;
        My402ListElem *nextelem = NULL;
        elem = My402ListFirst(p);
        do{
        nextelem = elem->next;
        My402ListUnlink(p,elem);
        elem = nextelem;
        }while(elem != &(p->anchor));
}

