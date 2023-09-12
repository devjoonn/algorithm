# 10798 
arr = [input().rstrip() for i in range(5)]

for i in range(max(len(word) for word in arr)):
  for j in range(5):
    if i < len(arr[j]):
      print(arr[j][i], end="")
