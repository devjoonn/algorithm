#2606

import sys
sys.setrecursionlimit(10**9) #최대 재귀 수 설정

computerNum = int(sys.stdin.readline())
connectedComputerNum = int(sys.stdin.readline())

graph = [[] for _ in range(computerNum+1)]
visited = [0 for _ in range(computerNum+1)]
count = 0

for _ in range(connectedComputerNum):
    a, b = map(int, sys.stdin.readline().split())
    graph[a].append(b)
    graph[b].append(a)

def findVirus(start):
    global count
    visited[start] = 1
    graph[start].sort()

    for i in graph[start]:
        if visited[i] == 0:
            count += 1
            findVirus(i)

findVirus(1)

print(count)
