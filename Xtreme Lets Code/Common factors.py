
'''
Given 3 positive integers a,b,and c,return the number of common factors of a,b,c. Let x be an positive integer,then x can be called a common factor of integers a,b,and c only if a,b and c is all divisible by x.

Input Format

3 Lines with one integer in each line.
Constraints

1 <= a,b,c <= 1000
'''

l=sorted([int(input()) for _ in range(3)])
count=0
for i in range(1,l[0]+1):
    if l[0]%i==0 and l[1]%i==0 and l[2]%i==0:
        count+=1
print(count)