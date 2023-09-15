#1439 뒤집기
import sys
s = sys.stdin.readline().rstrip()
s_list = [i for i in s]

count_0 = 0 # 전부 0  
count_1 = 0 # 전부 1

if s_list[0] == '1':
  count_0 += 1
else:
  count_1 += 1

for i in range(len(s)-1):
  # i와 i+1 비교
  if s_list[i] != s_list[i+1]:
    if s_list[i+1] == '1':
      # 다음 수에서 1로 변경
      count_0 += 1
    else:
      # 다음 수에서 0로 변경
      count_1 += 1

print(min(count_0, count_1))