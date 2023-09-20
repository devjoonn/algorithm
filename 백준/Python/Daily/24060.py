# 24060
N, K = map(int ,input().split())
A = list(map(int ,input().split()))

cnt = 0
result = -1

def merge_sort(A, p, r):
    if p < r and cnt <= K:
        q = (p + r) // 2
        merge_sort(A, p, q)
        merge_sort(A, q + 1, r)
        merge(A, p, q, r)
      
def merge(A, p, q, r):
    i = p
    j = q + 1
    t = 1
    tmp = []
    global cnt, result
    # 작은 순서대로 배열에 삽입
    while i <= q and j <= r:
        if A[i] <= A[j]:
            tmp.append(A[i])
            i += 1
        else:
            tmp.append(A[j])
            j += 1
    # 남은 데이터도 삽입      
    while i <= q:
        tmp.append(A[i])
        i += 1
    while j <= r:
        tmp.append(A[j])
        j += 1
      
    i = p
    t = 0
    # 정렬된 데이터 삽입 
    while i <= r:
        A[i] = tmp[t]
        cnt += 1
        if cnt == K:
            result = A[i]
            break
        i += 1
        t += 1

merge_sort(A, 0, N-1)
print(result)
