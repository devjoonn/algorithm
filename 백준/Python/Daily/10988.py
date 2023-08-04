import sys

word = list(str(sys.stdin.readline().rstrip()))

if list(reversed(word)) == word:
  print(1)
else:
  print(0)