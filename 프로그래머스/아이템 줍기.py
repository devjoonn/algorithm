#프로그래머스 아이템 줍기
from collections import deque

def solution(rectangle, characterX, characterY, itemX, itemY):
    answer = 0
    # 제한 사항 1이상 50이하 2배 좌표
    field = [[-1] * 102 for _ in range(102)]

    # 사각형 그리기
    for r in rectangle:
        # 최단 경로 그릴 시 테두리가 인접해 제곱해줘야함
        x1, y1, x2, y2 = map(lambda x: x*2, r)
        #  x1부터 x2, y1부터 y2 순회
        for i in range(x1, x2+1):
            for j in range(y1, y2+1):
#               # x1, x2, y1, y2 테두리 제외 내부 0으로 채움
                if x1 < i < x2 and y1 < j <y2:
                    field[i][j] = 0

                # 직사각형의 내부가 아니면서 테두리일 때 1
                if field[i][j] != 0:
                    field[i][j] = 1


    dx = [-1,1,0,0]
    dy = [0,0,-1,1]
    q = deque()
    q.append([characterX*2, characterY*2])
    visited = [[1] * 102 for _ in range(102)]

    while q:
        x, y = q.popleft()
        # 아이템 장소 위치 시
        if x == itemX*2 and y == itemY*2:
            answer = visited[x][y] // 2
            break

        # 상하좌우 탐색
        for k in range(4):
            nx = x+dx[k]
            ny = y+dy[k]
            # 현재 좌표가 테두리 & 방문하지 않았다면
            if field[nx][ny] == 1 and visited[nx][ny] == 1:
                q.append([nx, ny])
                visited[nx][ny] = visited[x][y] + 1

    return answer