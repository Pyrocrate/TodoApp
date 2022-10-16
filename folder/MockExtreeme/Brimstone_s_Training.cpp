#include <bits/stdc++.h>
using namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    //write a code
    //Brimstone wants to practice shooting his laser guns. For this he rents a shooting range. 
    //The Shooting range is surrounded by walls on three sides and on the fourth side N killer bots are arranged in a row. 
    //The bots are numbered from 1 to N from the left to right. 
    //Zombie i has Zi HP at the start. Brimstone has access to M Laser Guns and the i-th Laser Gun can shoot Ki Laser beams. 
    //Brimstone can shoot any number >=0 and <=Ki of these laser beams from gun i and it will hit all the bots whose numbers lie between Li and Ri both inclusive. 
    //A single hit from a beam reduces the HP of the bots by 1 HP. If the HP of a bot becomes 0 then it is considered destroyed. 
    //Can Brimstone destroy all the bots by himself? If so what is the minimum number of beams he has to fire to achieve this?
    //Input Format
    //The first line contains T, number of testcases.
    //The first line of each test case contains two integers N and M.
    //The second line of each test case contains N integers Z1, Z2, ..., ZN
    //M lines follow. The i-th line contains 3 integers Li,Ri,Ki
    int t;
    cin>>t;
    while(t--)
    {
        int n,m;
        cin>>n>>m;
        int z[n];
        for(int i=0;i<n;i++)
        {
            cin>>z[i];
        }
        int l[m],r[m],k[m];
        for(int i=0;i<m;i++)
        {
            cin>>l[i]>>r[i]>>k[i];
        }
        int ans=0;
        
        
    }
    return 0;
}