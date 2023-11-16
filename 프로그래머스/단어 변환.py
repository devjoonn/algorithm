#프로그래머스 단어 변환
from collections import deque

def solution(begin, target, words):
    answer = 0
    q = deque()
    q.append([begin, 0]) # 시작단어, 깊이
    visited = [False for _ in range(len(words))]

    while q:
        word, cnt = q.popleft()
        if word == target:
            answer = cnt
            break

        for i in range(len(words)):
            tmp_cnt = 0

            if not visited[i]: # 확인 안한 단어
                for j in range(len(word)): # q 안에서 꺼낸 word의 글자
                    if word[j] != words[i][j]: # 꺼낸글자와 words의 순서대로 글자 비교
                        tmp_cnt += 1

                if tmp_cnt == 1: # 틀린 글자가 한 개라면
                    q.append([words[i], cnt+1])
                    visited[i] = 1

    return answer