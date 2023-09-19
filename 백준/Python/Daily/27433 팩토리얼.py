# 27433 팩토리얼
import sys

def factorial(n):
  if n <= 1:
    return 1
  
  return n * factorial(n-1)

num = int(sys.stdin.readline().rstrip())

print(factorial(num))
