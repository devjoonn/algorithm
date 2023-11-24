#프로그래머스 카펫

# a >= b
# brown = 2a + 2b - 4
# yellow = (a-2) * (b-2)
# 2a + 2b = brown + 4
# ab = brown + yellow

def solution(brown, yellow):
    answer = []
    total = brown + yellow

    for b in range(1, total+1):
        if total/b % 1 == 0:    # total / b = a
            a = total / b
            if a >= b:
                if 2*a + 2*b == brown + 4:
                    return [a, b]

    return [a, b]
