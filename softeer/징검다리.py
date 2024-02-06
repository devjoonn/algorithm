# softeer 징검다리
import sys

n = int(sys.stdin.readline())
rocks = list(map(int, sys.stdin.readline().split()))
dp = [1] * n

for i in range(1, n):
    find = 0
    for j in range(i):
        if rocks[j] < rocks[i]:
            find = max(find, dp[j])
    dp[i] = find + 1

print(max(dp))