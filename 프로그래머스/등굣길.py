#프로그래머스 등굣길

def solution(m, n, puddles):
    dp = [[0]*(m+1) for _ in range(n+1)]
    # 행렬 좌표가 반대로 구성됨
    puddles = [[q,p] for [p,q] in puddles]
    dp[1][1] = 1

    #시작을 [1,1] 부터
    for i in range(1, n+1):
        for j in range(1, m+1):
            if i == 1 and j == 1:
                continue

            if [i,j] in puddles:
                # 웅덩이 위치 0으로 변경
                dp[i][j] = 0
            else:
                # 현재칸 = 왼쪽 칸 + 위 칸 합
                dp[i][j] = (dp[i-1][j] + dp[i][j-1]) % 1000000007

    return dp[n][m]