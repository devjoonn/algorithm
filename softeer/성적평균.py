# softeer 성적평균
import sys

n, k = map(int, sys.stdin.readline().split())
s = [0] + list(map(int, sys.stdin.readline().split()))
result = []

for i in range(k):
    sum = 0
    a, b = map(int, sys.stdin.readline().split())

    x = s[a:b+1]
    for p in x:
        sum += p
    result.append(sum/len(x))

for i in result:
    print(format(i, ".2f"))