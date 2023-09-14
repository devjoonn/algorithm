#2920 음계
import sys

n_list = list(map(int, sys.stdin.readline().rstrip().split()))

asc = True
des = True

for i in range(1,len(n_list)):
  if n_list[i-1] < n_list[i]:
    des = False
  elif n_list[i-1] > n_list[i]:
    asc = False

if asc:
  print("ascending")
elif des:
  print("descending")
else:
  print("mixed")
