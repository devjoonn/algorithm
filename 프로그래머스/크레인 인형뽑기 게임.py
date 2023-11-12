#프로그래머스 크레인 인형뽑기 게임

def solution(board, moves):
    stack = []
    answer = 0

    for i in moves:
        # 세로 탐색
        for j in range(len(board)):
            if board[j][i-1] != 0:
                stack.append(board[j][i-1])
                board[j][i-1] = 0

                if len(stack) > 1:
                    if stack[-1] == stack[-2]:
                        stack.pop(-1)
                        stack.pop(-1)
                        answer += 2
            # 크레인 작업 파고들 필요 x
            break

    return answer