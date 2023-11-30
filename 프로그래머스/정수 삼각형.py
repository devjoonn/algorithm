#프로그래머스 정수 삼각형

def solution(triangle):
    dp = [[0]*len(triangle) for _ in range(len(triangle))]
    dp[0][0] = triangle[0][0]

    # 거처간 숫자의 최대 값
    for i in range(0, len(triangle)-1):
        for j in range(len(triangle[i])):
            # 각 층 별 최대 값 저장
            dp[i+1][j] = max(dp[i+1][j], dp[i][j] + triangle[i+1][j])
            dp[i+1][j+1] = max(dp[i+1][j+1], dp[i][j] + triangle[i+1][j+1])

    # dp의 마지막 원소 중 최대 값
    return max(dp[-1])