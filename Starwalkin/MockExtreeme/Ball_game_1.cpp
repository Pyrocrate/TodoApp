#include <bits/stdc++.h>
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    //Input Format
    //The first line contains a single integer N, the number of balls in the bag.
    //The second line contains the N integer values written on the cubes.
    int n;
    cin>>n;
    int a[n];
    for(int i=0;i<n;i++)
    {
        cin>>a[i];
    }
    sort(a,a+n);
    //Output Format
    //The output should contain a single number representing Joel's sum if they both play optimally.
    int ans=0;
    for(int i=1;i<n;i++)
    {
        ans+=a[i];
    }
    if(accumulate(a,a+n,0)>0)
    {
        cout<<ans<<endl;
    }
    else
    {   ans=0;
        int post;
        for(int i=n-1;i>=0;i--)
        {
            if(a[i]<0)
            {
                post=i;
                break;
            }
            else
            {
                ans+=a[i];
            }
        }
        if(post==0)
        {
            cout<<ans<<endl;
        }
        else{
            if((post+1)%2==0)
            {
                for(int i=post;i>=0;i-=2)
            {
                ans+=a[i];
                //cout<<a[i]<<" ";
            }
            }
            else
            {
                for(int i=post-1;i>=0;i-=2)
            {
                ans+=a[i];
            }
            }
            cout<<ans<<endl;
        }
    }
    return 0;
}