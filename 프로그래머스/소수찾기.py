#프로그래머스 소수찾기
from itertools import permutations

def solution(numbers):
    answer = 0
    num = []

    for i in range(1,len(numbers)+1):
        # 순열 모듈 사용해 나올 수 있는 모든 수 조합 (한 자리 수 ~ 끝 자리 수)
        num.append(list(set(map(''.join, permutations(numbers, i)))))
    per = list(set(map(int, set(sum(num, [])))))

    for j in per:
        if isPrime(j) == True:
            answer += 1

    return answer

def isPrime(x):
    if x < 2:
        return False

    for i in range(2, x):
        if x % i == 0:
            return False

    return True