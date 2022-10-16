#include <bits/stdc++.h>
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    //Devon is playing a game where he needs to find whether a number is a special number or not. 
    //Only one operation can be done to the number and that is to deduct the value of the sum of its digits from the number and then this value becomes the new number.
    //This operation is to be done until the number reaches the value 0. If this operation is repeated less than 5 times before the number reaches 0 then the number is deemed 'Special'
    //Input Format
    //The first line contains the number of test cases The next 'n' line contains one integer to find out if it is Special or not
    int t;
    cin>>t;
    while(t--)
    {
        int n;
        cin>>n;
        int count=0;
        while(n>0)
        {
            int sum=0;
            int temp=n;
            while(temp>0)
            {
                sum+=temp%10;
                temp/=10;
            }
            n-=sum;
            count++;
        }
        if(count<5)
        {
            cout<<count<<" 1"<<endl;
        }
        else
        {
            cout<<count<<" 0"<<endl;
        }
    }
    return 0;
}