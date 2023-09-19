# 10870 피보나치
import sys

def fibo(n):
  if n == 0 or n == 1:
    return n

  return fibo(n-1) + fibo(n-2)

num = int(sys.stdin.readline().rstrip())
print(fibo(num))