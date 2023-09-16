#1931 회의실
import sys

n = int(sys.stdin.readline().rstrip())
time_list  = [tuple(map(int, sys.stdin.readline().rstrip().split())) for i in range(n)]
# 반례가 있을 수 있어 끝나는 시간 [1]을 우선 정렬 후 시작 시간 [0] 정렬
time_list.sort(key=lambda x : (x[1], x[0]))

count = 1
end_time = time_list[0][1]

for i in range(1, n):
  if end_time <= time_list[i][0]:
    count += 1
    end_time = time_list[i][1]

print(count)
