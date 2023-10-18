#2667
import sys
sys.setrecursionlimit(10**9) #최대 재귀 수 설정

n = int(sys.stdin.readline())
graph = []
result = []
count = 0

for _ in range(n):
    graph.append(list(map(int, sys.stdin.readline().rstrip())))

def dfs(x, y):
    global count
    # graph에서 벗어난 경우
    if x < 0 or y < 0 or x >= n or y >= n:
        return False

    if graph[x][y] == 1: # 집 발견
        count += 1 # 집 증가
        graph[x][y] = 0 # 집 방문처리
        dfs(x-1,y) #상
        dfs(x,y-1) #하
        dfs(x+1,y) #좌
        dfs(x,y+1) #우
        return True
    return False 

for i in range(n):
    for j in range(n):
        if dfs(i,j) == True:
            result.append(count) # 단지에 있는 집의 수 삽입
            count = 0

result.sort()
print(len(result), *result, sep='\n') 
