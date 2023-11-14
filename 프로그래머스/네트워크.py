#프로그래머스 네트워크

def solution(n, computers):
    answer = 0
    visited = [False for _ in range(n)]

    def dfs(v):
        visited[v] = True

        for i in range(n):
            if not visited[i] and computers[v][i]:
                dfs(i)

    for i in range(n):
        if not visited[i]:
            dfs(i)
            answer += 1

    return answer
