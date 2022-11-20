#include <stdio.h>
#include "numclass.h"
int isPrime(int num){
    for (int i = 2; i*i < num/2; i++)
    {
        if (num%i==0)
        {
            return 0;
        }
        
    }
    return 1;
}
int isStrong(int num){
    int sumStrong=0;
    do
    {
        int factorial=1,digit=num%10;
        for (int i = 0; i <digit; i++)
        {
            factorial *=i;
        }
        sumStrong+=factorial;
        num /=10;
    } while (num);
    return (sumStrong==num);
}