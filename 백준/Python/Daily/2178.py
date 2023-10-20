# 2178
import sys
from collections import deque
sys.setrecursionlimit(10*9)

n, m = map(int, sys.stdin.readline().split())
graph = []

dx = [-1,1,0,0]
dy = [0,0,-1,1]

for _ in range(n):
    graph.append(list(map(int, sys.stdin.readline().rstrip())))


def findMiro(x, y):
    que = deque()
    que.append((x,y))

    while que:
        x, y = que.popleft()
      
        for i in range(4):
            nx = x + dx[i]  
            ny = y + dy[i]

            if nx < 0 or nx >= n or ny < 0 or ny >= m: # 벽을 넘어가는 경우
                continue
            if graph[nx][ny] == 0: # 벽인 경우
                continue
            if graph[nx][ny] == 1: # 해당 노드 첫 방문 시 
                graph[nx][ny] = graph[x][y] + 1 # 기존 카운트에 1 더하기
                que.append((nx, ny))
                
    return graph[n-1][m-1]
  
print(findMiro(0, 0))