#include <bits/stdc++.h>
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    int n,x,y;
    cin>>n>>x>>y;
    //The first line contains 3 space separated integers N, X, and Y, where N is the number of events, X is the number of time instances when bus A can be used and Y is the number of time instances when bus B can be used. The next N lines describe each event. Each of these N lines contains two space separated integers S and E, where S is the starting time of the particular event and E is the ending time of that event, with S < E. The next line contains X space separated integers which are the time instances when the bus A can be used. The next line contains Y space separated integers which are the time instances when the bus B can be used.
    vector<pair<int,int>> v;
    for(int i=0;i<n;i++)
    {
        int s,e;
        cin>>s>>e;
        v.push_back(make_pair(s,e));
    }
    sort(v.begin(),v.end());
    /*for (int i=0; i<n; i++)
    {
        // "first" and "second" are used to access
        // 1st and 2nd element of pair respectively
        cout << v[i].first << " "
             << v[i].second << endl;
    }*/
    int a[x],b[y];
    for(int i=0;i<x;i++)
    {
        cin>>a[i];
    }
    for(int i=0;i<y;i++)
    {
        cin>>b[i];
    }
    int count=INT_MAX;
    sort(a,a+x);
    sort(b,b+y);
    //If you leave through bus A at time t1 and come back through bus B at time t2, then the total time you have spent is (t2 - t1 + 1). Your aim is to spend as little time as possible overall while ensuring that you take part in one of the events.
    for(int i=0;i<n;i++)
    {
        int s=v[i].first;
        int e=v[i].second;
        int t1=0,t2=INT_MAX;
        //cout<<"s="<<s<<" e="<<e<<endl;

        for(int j=0;j<x;j++)
        {
            if(a[j]<=s)
            {   //cout<<"a[j]="<<a[j]<<endl;
                t1=max(t1,a[j]);
                //cout<<t1<<" i= "<<i+1;
            }
            else
            {
                break;
            }
        }
        for(int j=y-1;j>=0;j--)
        {
            if(b[j]>=e)
            {   //cout<<"b[j]="<<b[j]<<endl;
                t2=min(t2,b[j]);
                //cout<<" "<<t2<<"\n";
            }
            else
            {
                break;
            }
        }
        if(t1!=0 && t2!=0)
        {
            count=min(count,t2-t1+1);
        }
    }
    cout<<count;
    return 0;
}