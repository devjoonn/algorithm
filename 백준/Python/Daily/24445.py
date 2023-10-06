#24445
import sys
from collections import deque
sys.setrecursionlimit(10**9) #최대 재귀 수 설정

n, m, r = map(int, sys.stdin.readline().split())
graph = [[] for i in range(n+1)]
visited = [0 for i in range(n+1)]
count = 1

for _ in range(m):
    a, b = map(int, sys.stdin.readline().split())
    graph[a].append(b)
    graph[b].append(a)
  
def bfs(v):
    global count
    que = deque([r])
    visited[r] = 1

    while que:
        v = que.popleft()
        graph[v].sort(reverse=True)

        for i in graph[v]:
            if visited[i] == 0:
                count += 1
                visited[i] = count
                que.append(i)

bfs(r)

for i in range(1, n+1):
    print(visited[i])