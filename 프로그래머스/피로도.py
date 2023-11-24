#프로그래머스 피로도

def solution(k, dungeons):
    answer = 0
    visited = [False for _ in range(len(dungeons))]

    def dfs(k, dungeons, cnt):
        nonlocal answer
        if cnt > answer:
            answer = cnt

        for i in range(len(dungeons)):
            # 던전이 필요 피로도보다 크고, 방문 x
            if k >= dungeons[i][0] and not visited[i]:
                visited[i] = True
                # 피로도에서 소모 피로도 빼고, cnt+1 해서 재귀
                dfs(k - dungeons[i][1], dungeons, cnt + 1)
                visited[i] = False

    dfs(k, dungeons, 0)
    return answer

