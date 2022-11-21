#include "numclass.h"
int isPalindrome(int num){
    int revNum=0;
    while (num)
    {
        revNum=revNum*10 + num%10;
        num/=num;
    }
    return num==revNum;
}
int isArmstrong(int num){
    if (!num)
    {
        return 1;
    }
    
    int sum=0,length=0;
    for (int i = 1; i <= num; i*10)
    {
        length++;
    }
    
    while (num)
    {
        int pow=1,digit=num%10;
        for (int i = 0; i < length; i++)
        {
            pow*=digit;
        }
        num/=10;
    }
    
}