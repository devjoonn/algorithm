#2012 등수 매기기
import sys
n = int(sys.stdin.readline().rstrip())
student = [int(sys.stdin.readline().rstrip()) for i in range(n)]
student.sort()
count = 0

for i in range(1,n+1):
  count += abs(i-student[i-1])

print(count)