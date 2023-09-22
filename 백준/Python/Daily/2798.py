#2798 블랙잭
import sys

n, m = map(int, sys.stdin.readline().rstrip().split())
card_list = list(map(int, sys.stdin.readline().rstrip().split()))
max = 0

for i in range(n):
  for j in range(i+1, n):
    for k in range(j+1, n):
      if card_list[i] + card_list[j] + card_list[k] <= m:
        if card_list[i] + card_list[j] + card_list[k] > max:
          max = card_list[i] + card_list[j] + card_list[k]

print(max)