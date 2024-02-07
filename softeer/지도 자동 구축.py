# softeer 지도 자동 구축
import sys

n = int(sys.stdin.readline())
dp = [0] * 16
dp[0] = 2

for i in range(1, n+1):
    # dp[i] i일 때 한 변의 점 개수
    dp[i] = dp[i-1] + (dp[i-1]-1)

print(dp[i]**2)

# 4 9 25 81  256  
# 2 3  5  9   16
# 0 1  2  3    4


