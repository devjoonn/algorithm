# 11724
import sys
sys.setrecursionlimit(10**9) #최대 재귀 수 설정

n, m = map(int, sys.stdin.readline().split())
graph = [[] for i in range(n+1)]
result = [0 for i in range(n+1)]
count = 0

for i in range(m):
    u, v = map(int, sys.stdin.readline().split())
    graph[u].append(v)
    graph[v].append(u)

def findComponent(v):
    global count
    result[v] = 1
    for i in graph[v]:
        if not result[i]:
            findComponent(i)

for i in range(1, n+1):
    if not result[i]: # result의 값이 0이 아니라면 (방문하지 않았다면)
        findComponent(i)
        count += 1

print(count)