#24416 피보나치 DP - pypy3
import sys 

def fibo(n):
  if n <= 1:
    return n
  else:
    return fibo(n - 1) + fibo(n - 2)

def fibo_dp(n):
  arr = list(0 for _ in range(n+1))
  arr[0] = 0
  arr[1], arr[2] = 1, 1
  cnt = 0
  
  for i in range(3,n+1):
    arr[i] = arr[i-1] + arr[i-2]
    cnt += 1
    
  return cnt


n = int(sys.stdin.readline())
print(f"{fibo(n)} {fibo_dp(n)}")