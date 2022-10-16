#include <bits/stdc++.h>
using namespace std;

void findMinOperations(int arr[],
                       int N, int K)
{
    // Stores number of operations
    int operations = 0;
 
    // Iterate in the range [0, K-1]
    for (int i = 0; i < K; i++) {
 
        // Stores frequency of elements
        // separated by distance K
        unordered_map<int, int> freq;
 
        for (int j = i; j < N; j += K)
            freq[arr[j]]++;
 
        // Stores maximum frequency
        // and corresponding element
        int max1 = 0, num;
 
        // Find max frequency element
        // and its frequency
        for (auto x : freq) {
            if (x.second > max1) {
                max1 = x.second;
                num = x.first;
            }
        }
 
        // Update the number of operations
        for (auto x : freq) {
            if (x.first != num)
                operations += x.second;
        }
    }
 
    // Print the result
    cout << operations<<endl;
}

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    //Minimum swaps required to bring all elements less than or equal to k together
    //Input Format

//The first line contains an integer T, the number of test cases. Then the test cases follow.
//Each test case contains two lines of input.
//The first line contains two space-separated integers N, K.
//The second line contains N space-separated integers.
    int t;
    cin>>t;
    while(t--)
    {
        int n,k;
        cin>>n>>k;
        int a[n];
        for(int i=0;i<n;i++)
        {
            cin>>a[i];
        }
        findMinOperations(a,n,k);

    }

    return 0;
}