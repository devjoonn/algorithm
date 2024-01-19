# 백준 1205 등수 구하기
n, new, p = map(int, input().split())
if n == 0:
    print(1)
else:
    score = list(map(int, input().split()))
    # n == p || score 마지막이 새로운 값보다 작거나 같다면
    if n == p and score[-1] >= new:
        print(-1)
    else:
        res = n + 1
        # score에서 new보다 작거나 같을 경우 
        for i in range(n):
            if score[i] <= new:
                res = i + 1
                break
        print(res)