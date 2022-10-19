class Solution:
    def longestPalindrome(s):
        flag=0
        if len(s) <=1:
            print (s)
            flag=1
        elif len(s) == 2:
            print (s) if s[0] == s[1] else s[0]
            flag=1
        
        a = [s[0]]
        b = '' 
        c = list(s[-1:0:-1])
        
        maxPalin = ''
        while len(c) > 0:
            palinC = b
            
            for j in range(0, min(len(a), len(c))):
                char = c[-1-j]
                if a[-1-j] == char:
                    palinC = char + palinC + char 
                else:
                    break

            if b != '':
                a.append(b) 
                b = ''
            else:
                b = c.pop() 
            
            if len(palinC) > len(maxPalin):
                maxPalin = palinC
        if flag!=1:
            print (maxPalin)        
    longestPalindrome(input())