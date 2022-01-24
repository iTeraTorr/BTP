/*
NAME    : AMAGNUM
*/

#include <bits/stdc++.h>
using namespace std;

#define MOD 1e9 + 7 

//FOR
#define FOR(a, c) for (int(a) = 0; (a) < (c); (a)++) 
#define FORL(a, b, c) for (int(a) = (b); (a) <= (c); (a)++) 
#define FORR(a, b, c) for (int(a) = (b); (a) >= (c); (a)--) 
#define INF 1000000000000000003

#define F first
#define S second
#define PB push_back
#define ALL(v) v.begin(), v.end()
#define POB pop_back
#define PERMUTE next_permutation

#define MP make_pair 

typedef long long int ll; 
typedef vector<int> vi;
typedef vector<vector<int>> vvi; 
typedef pair<int, int> pi; 

ll expo(ll a, ll b, ll m);

int i,j,I,J, sum=0;

void solve(){
	int n;
        cin >> n;
}

int main()
{
    ios::sync_with_stdio(0); 
    cin.tie(0); 
    int T=1;
    //cin >> T;
    while (T--)
    {
        solve();
    }
}


ll expo(ll a, ll b, ll m) 
{ 
    if (b == 0) 
        return 1; 
    ll p = expo(a, b / 2, m) % m; 
    p = (p * p) % m; 
  
    return (b % 2 == 0) ? p : (a * p) % m; 
} 

