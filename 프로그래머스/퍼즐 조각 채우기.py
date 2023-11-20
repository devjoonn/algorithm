#프로그래머스 퍼즐 조각 채우기
from collections import deque

dx = [-1,1,0,0]
dy = [0,0,-1,1]

def solution(game_board, table):
    answer = 0
    empty_blocks = find_block(game_board, 0) # 빈공간 0
    puzzles = find_block(table, 1) # 블록 1

    for empty in empty_blocks:
        filled = False
        table = make_table(empty)

        for puzzle_origin in puzzles:
            # block이 빈공간에 맞아 채워졌다면
            if filled == True:
                break

            puzzle = make_table(puzzle_origin)
            # 4 방향으로 rotate를 해서 빈공간에 맞는지 확인
            for i in range(4):
                puzzle, cnt = rotate(puzzle)

                if table == puzzle:
                    answer += cnt
                    puzzles.remove(puzzle_origin)
                    filled = True
                    break

    return answer

# 블럭 또는 빈공간 찾아서 리턴하는 함수
def find_block(board, f):
    empty_board_list = []
    visited = [[False] * len(board[0]) for _ in range(len(board))]

    for i in range(len(board)):
        for j in range(len(board[i])):
            # 방문한 적이 없고 f 설정 값이라면
            if not visited[i][j] and board[i][j] == f:
                q = deque([(i, j)])
                board[i][j] = f^1 # XOR연산자 1
                visited[i][j] = True
                lst = [(i, j)]

                while q:
                    x, y = q.popleft()
                    for k in range(4):
                        nx = x + dx[k]
                        ny = y + dy[k]
                        # 상하좌우 board 범위 벗어나거나 빈공간 또는 채워져있을 경우
                        if nx < 0 or nx > len(board)-1 or ny < 0 or ny > len(board)-1:
                            continue
                        # 빈공간 또는 블록이 일치한다면
                        if board[nx][ny] == f:
                            q.append((nx, ny))
                            board[nx][ny] = f^1
                            visited[nx][ny] = True
                            lst.append((nx, ny))

                # 위치 값 저장된 리스트
                empty_board_list.append(lst)
    return empty_board_list

# empty_block 또는 puzzle을 테이블화 시키는 함수
def make_table(block):
    # 블록의 x, y 좌표 분리
    x, y = zip(*block)
    # 블록의 행, 열
    c, r = max(x) - min(x) + 1, max(y) - min(y) + 1
    table = [[0] * r for _ in range(c)]

    for i, j in block:
        # 좌표를 테이블 상의 인덱스로 변환
        i, j = i - min(x), j - min(y)
        table[i][j] = 1
    return table


# 오른쪽으로 90도 회전하는 함수
def rotate(puzzle):
    rotate = [[0] * len(puzzle) for _ in range(len(puzzle[0]))]
    count = 0
    for i in range(len(puzzle)):
        for j in range(len(puzzle[i])):
            if puzzle[i][j] == 1:
                count += 1
            # 오른쪽으로 90도 회전 새로운 위치에 값을 저장
            rotate[j][len(puzzle) - 1 - i] = puzzle[i][j]
    return rotate, count

