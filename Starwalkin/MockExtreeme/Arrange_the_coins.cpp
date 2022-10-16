#include <bits/stdc++.h>
using namespace std;
#define intl long long int

intl find(intl a[],intl n,intl x)
{
    for(intl i=0;i<n;i++)
    {
        if(a[i]==x)
        {
            return i;
        }
    }
    return -1;
}

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    intl t;
    cin>>t;
    while(t--)
    {
        intl n;
        cin>>n;
        intl a[n],copy[n];
        for(intl i=0;i<n;i++)
        {
            cin>>a[i];
            copy[i]=a[i];
        }
        //sort(copy,copy+n);
        intl ans=0,k=n,i=1;
        while(k>0)
        {   
            //cout<<"k="<<k<<endl;
            ans+=k;
            intl x=find(a,n,i);
            if(x!=-1 && x<k)
            {
                k=x;
            }
            i+=1;
        }
        
        cout<<ans<<endl;
    }

    return 0;
}