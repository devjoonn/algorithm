import sys

inputList = []

for i in range(10):
  input = int(sys.stdin.readline()) % 42
  
  if input in inputList:
    continue
  else:
    inputList.append(input)

print(len(inputList))