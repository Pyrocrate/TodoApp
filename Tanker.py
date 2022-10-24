#Tanker problem of Xtreme competition


n=int(input())
for i in range(n):
    s,c,r=[int(x) for x in input().split()]
    ftotal=c*r
    fnow=c
    flag=0
    for j in range(s):
        f,rc=[int(x) for x in input().split()]
        fnow=fnow-f
        if(j!=0):
            if(f>d):
                ftotal=ftotal+500+((c-d)*w)
                fnow=c
                flag=1
        if(flag):
          d=fnow-f
          w=rc
        
    
    print(ftotal)
