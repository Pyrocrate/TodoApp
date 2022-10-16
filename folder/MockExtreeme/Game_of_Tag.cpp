#include <bits/stdc++.h>
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    //There are k children playing a game of tag (numbered 1 through k). For simplicity, we'll view them as points on a line. For each valid a, the position of the a-th child is Xa
    //It turns out that exactly one of these people is free , but the seeker do not know which one. A free child can free a locked child whenever the distance between them is at most 2. If we wait long enough, a specific set of children (depending on the child that was free initially) will become free; let's call the size of this set the final number of free children.
    //Your task is to find the smallest and largest value of the final number of free children.
    //Input Format
    //The first line of the input contains a single integer T denoting the number of test cases. The description of T test cases follows. The first line of each test case contains a single integer k. The second line contains N space-seperated integers X1, X2,....., XN
    int t;
    cin>>t;
    while(t--)
    {
        int n;
        cin>>n;
        int a[n],Max=INT_MIN,Min=INT_MAX;
        for(int i=0;i<n;i++)
        {
            cin>>a[i];
        }
        sort(a,a+n);
        for(int i=0;i<n;i++)
        {   
            int count=1,p=i,q=i;
            while(p<n-1 && a[p+1]-a[p]<=2)
            {
                count++;
                p++;
            }
            while(q>0 && a[q]-a[q-1]<=2)
            {
                count++;
                q--;
            }
            Min=min(count,Min);
            Max=max(count,Max);
        }
        cout<<Min<<" "<<Max<<endl;
    }
    return 0;
}