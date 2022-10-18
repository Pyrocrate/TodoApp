'''
There's a new system in town, specifically one for calculating a programmer's worth.

Consistency is everything when it comes to learning and development and being consistent helps win contests too.

This new system assings points to a programmer based on one's activities and gives them a rating.

The points is calculated as follows :

A contest win is given 300 points + an additional (20 - RANK) points is given if the contest rank falls below 20
An open source contribution is given 300 points
Building a new project gives them anywhere between 50 - 1000 points
Conducting a coding event gives them 50 points.
Also nothing in this world is ever fair, therefore the system grants its pro users 1 rating per 200 points and its regular users 1 rating per 400 points.

Your goal is to predict the rating given to a user by this system based on their activities.

Input Format

An integer t denoting the number of users For each user:
First line contains an integer followed by a string member denoting activities, "REGULAR" or "PRO" respectively, where activities denotes number of activities of the user, member denotes whether the user is a pro or regular user.
For each of the next activities lines, each line contains an activity. An activity can be of four types as defined above.
Contest Win : Input will be of form of CONTEST_WON RANK, where RANK denotes the rank of the user.
OS Contribution : Input will be of form of CONTRIBUTOR.
Project Building : Input will be of form of PROJECT VALUE, where VALUE denotes the VALUE of the project.
Event Hosting : Input will be of form of EVENT_HOSTED.
Constraints

1 ≤ t, activities ≤ 100
1 ≤ RANK ≤ 5000
50 ≤ VALUE ≤ 1000
Output Format

For each user, return the value of their rating in a new line.
'''
for _ in range(int(input())):
    n,pro=input().split()
    n=int(n)
    pro=pro=="PRO"
    points=0
    for _ in range(n):
        l=input().split()
        if l[0]=="CONTEST_WON":
            points+=300+((20-int(l[1])) if int(l[1])<20 else 0)
        elif l[0]=="CONTRIBUTOR":
            points+=300
        elif l[0]=="PROJECT":
            points+=int(l[1])
        elif l[0]=="EVENT_HOSTED":
            points+=50
    print(points//(200 if pro else 400))