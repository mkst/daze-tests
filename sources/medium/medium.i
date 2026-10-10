# 1 "medium.c"
 










static char sieve_flags[1000  + 1];
static int work_array[64 ];

struct point {
    int x;
    int y;
};

int sieve_count(void)
{
    int i;
    int k;
    int prime;
    int count;
    int iter;
    int total;

    total = 0;
    for (iter = 0; iter < 5; iter++) {
        count = 0;
        for (i = 0; i <= 1000 ; i++)
            sieve_flags[i] = 1;
        for (i = 0; i <= 1000 ; i++) {
            if (sieve_flags[i]) {
                prime = i + i + 3;
                for (k = i + prime; k <= 1000 ; k += prime)
                    sieve_flags[k] = 0;
                count++;
            }
        }
        total += count;
    }
    return total;
}

int gcd(int a, int b)
{
    int t;

    while (b != 0) {
        t = b;
        b = a % b;
        a = t;
    }
    return a;
}

int lcm(int a, int b)
{
    return (a / gcd(a, b)) * b;
}

long factorial(int n)
{
    long acc;
    int i;

    acc = 1;
    for (i = 2; i <= n; i++)
        acc *= i;
    return acc;
}

long fibonacci(int n)
{
    long a;
    long b;
    long t;
    int i;

    if (n <= 1)
        return n;
    a = 0;
    b = 1;
    for (i = 2; i <= n; i++) {
        t = a + b;
        a = b;
        b = t;
    }
    return b;
}

int dot_product(struct point *p, struct point *q, int n)
{
    int sum;
    int i;

    sum = 0;
    for (i = 0; i < n; i++)
        sum += p[i].x * q[i].x + p[i].y * q[i].y;
    return sum;
}

void reverse_array(int *arr, int n)
{
    int lo;
    int hi;
    int tmp;

    lo = 0;
    hi = n - 1;
    while (lo < hi) {
        tmp = arr[lo];
        arr[lo] = arr[hi];
        arr[hi] = tmp;
        lo++;
        hi--;
    }
}

int checksum_array(int *arr, int n)
{
    int sum;
    int i;

    sum = 0;
    for (i = 0; i < n; i++)
        sum = sum * 31 + arr[i];
    return sum;
}

int classify(int v)
{
    if (v < 0)
        return -1;
    switch (v % 4) {
    case 0:
        return 0;
    case 1:
        return 10;
    case 2:
        return 20;
    default:
        break;
    }
    return 30;
}

int main(void)
{
    static struct point pts[4] = {{1, 2}, {3, 4}, {5, 6}, {7, 8}};
    static struct point qs[4] = {{8, 7}, {6, 5}, {4, 3}, {2, 1}};
    int i;
    int check;

    for (i = 0; i < 64 ; i++)
        work_array[i] = (i * 7 + 3) % 100;
    reverse_array(work_array, 64 );

    check = sieve_count();
    check += gcd(1071, 462);
    check += lcm(12, 18);
    check += (int)factorial(10);
    check += (int)fibonacci(20);
    check += dot_product(pts, qs, 4);
    check += checksum_array(work_array, 64 );
    check += classify(-5) + classify(0) + classify(7);

    return check == 0;
}
