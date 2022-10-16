#include <bits/stdc++.h>
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    //Nike plans to mass produce their newly release sneaker due to popular demand. They plan to produce the shoes for n days from the start of next month. They start the production with an initial rate of producing about k sneakers per day and plan to increase the production by x shoes after every interval of y days. For example, after y days the rate is k+x dollars per day, and after 2y days the rate is k+2x shoes per day, and so on. Output the amount of shoes they will be able to manufacture in the given period.
    //Input Format
    //The first line contains an integer T, the number of test cases. Then the test cases follow. Each test case contains a single line of input, four integers n,y,k,x.
    int t;
    cin>>t;
    while(t--)
    {
        int n,y,k,x;
        cin>>n>>y>>k>>x;
        int ans=0;
        int i=0;
        while(i<n)
        {
            ans+=k;
            i++;
            if(i%y==0)
            {
                k+=x;
            }
        }
        cout<<ans<<endl;
    }
    


    return 0;
}