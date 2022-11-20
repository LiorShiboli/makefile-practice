#include <stdio.h>
#include "numclass.h"
#include <math.h>
int isPrime(int num){
    for (int i = 2; i < sqrt( (double) num); i++)
    {
        if (num%i==0)
        {
            return 0;
        }
        
    }
    return 1;
}