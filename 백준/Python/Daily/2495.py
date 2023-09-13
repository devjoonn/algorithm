# 2485
import sys
from math import gcd

N = int(sys.stdin.readline().rstrip())
firstNum = int(sys.stdin.readline().rstrip())
arr = []

# 각 숫자 별 간격 차이 값
for i in range(N-1):
  num = int(sys.stdin.readline().rstrip())
  arr.append(num - firstNum)
  firstNum = num

# 제일 처음 차이 값
distance = arr[0]
for j in range(1, len(arr)):
  # 나무 간격의 최대공약수 
  distance = gcd(distance, arr[j])

result = 0
for k in arr:
  # 나누기 한 값 int
  result += k // distance - 1

print(result)