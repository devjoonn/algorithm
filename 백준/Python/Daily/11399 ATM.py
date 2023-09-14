# 백준 11399 ATM
import sys

N = int(sys.stdin.readline().rstrip())
waiting_list = list(map(int, sys.stdin.readline().rstrip().split()))
waiting_list.sort()

sum = 0
total = 0


for index in range(N):
  sum += waiting_list[index]
  total += sum

print(total)
