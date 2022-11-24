#include <stdio.h>
#include "numclass.h"
int main (){
    int lowerRange,upperRange;
    scanf("%d",&lowerRange);
    scanf("%d",&upperRange);
    for (int i = lowerRange; i <= upperRange; i++)
    {
        if (isPrime(i))
        {
            printf("%d ",i);
        }
        
    }
    for (int i = lowerRange; i <= upperRange; i++)
    {
        if (isArmstrong(i))
        {
            printf("%d ",i);
        }
        
    }
    for (int i = lowerRange; i <= upperRange; i++)
    {
        if (isStrong(i))
        {
            printf("%d ",i);
        }
        
    }
    for (int i = lowerRange; i < upperRange; i++)
    {
        if (isPalindrome(i))
        {
            printf("%d ",i);
        }
        
    }
    return 0;
}