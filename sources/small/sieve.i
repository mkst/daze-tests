# 1 "sieve.c"
 

 





char flags[8190 +1];

int main()
{
    register int i,k;
    int prime,count,iter;

    printf("10 iterations\n");

    for (iter = 1; iter <= 10; iter++) {  
        count = 0;  
        for (i = 0; i <= 8190 ; i++)  
            flags[i] = 1 ;
        for (i = 0; i <= 8190 ; i++) {
            if (flags[i]) {  
                prime = i + i + 3;  
                for (k = i + prime; k <= 8190 ; k += prime)
                    flags[k] = 0 ;	 
                count++;  
            }
        }
    }
    printf("%d primes.\n",count);  
    printf("sieve.c finished\n");
    return 0;
}
