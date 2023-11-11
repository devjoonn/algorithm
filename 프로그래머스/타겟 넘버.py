#프로그래머스 타겟 넘버

def solution(numbers, target):
    answer = DFS(numbers, target, 0, 0)
    return answer

def DFS(numbers, target, cur_sum, cur_idx):
    if cur_idx == len(numbers):
        if cur_sum == target:
            return 1
        else:
            return 0
    else:
        global answer
        answer = 0
        # 다 더한 경우 & 뺀 경우
        answer += DFS(numbers, target, cur_sum+numbers[cur_idx], cur_idx+1)
        answer += DFS(numbers, target, cur_sum-numbers[cur_idx], cur_idx+1)
        return answer
