import sys
sys.setrecursionlimit(10**9) #최대 재귀 수 설정

n, m, r = map(int, sys.stdin.readline().split())
graph = [[] for _ in range(n+1)]
visited = [0 for _ in  range(n+1)]
count = 1

for _ in range(m):
  a, b = map(int, sys.stdin.readline().split())
  graph[a].append(b)
  graph[b].append(a)

def dfs(v):
  global count
  visited[v] = count
  graph[v].sort()
  for i in graph[v]:
    if visited[i] == 0:
      count += 1
      dfs(i)

dfs(r)

for i in range(1,n+1):
  print(visited[i])