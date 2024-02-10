# softeer 강의실 배정
import sys
import heapq

n = int(sys.stdin.readline())
heap = []

for _ in range(n):
    s, f = map(int, sys.stdin.readline().split())
    heapq.heappush(heap, (s, f))

time = 0
count = 0

while heap:
    s, f = heapq.heappop(heap)

    if s >= time:
        count += 1
        time = f

print(count)

