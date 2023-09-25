#4779
import sys

def cantor(n):
  if n == 1:
    return "-"
  else:
    side = cantor(n // 3)
    center = " " * (n // 3)
    return side + center + side

    
while True:
  try:
    n = int(sys.stdin.readline())
    result = ["-"] * (3**n)
    print(cantor(3**n))
  except:
    break

  
