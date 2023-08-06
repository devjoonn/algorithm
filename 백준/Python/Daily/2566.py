import sys

A = [list(map(int, sys.stdin.readline().split())) for _ in range(9)]
maxA = 0
max_row, max_col = 0, 0

for row in range(9):
  for col in range(9):
    if maxA <= A[row][col]:
      maxA = A[row][col]
      max_row = row + 1
      max_col = col + 1

print(maxA)
print(max_row, max_col)
