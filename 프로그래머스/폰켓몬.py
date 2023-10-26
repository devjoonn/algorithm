#프로그래머스 폰켓몬

def solution(nums):
  answer = len(set(nums))

  if answer > len(nums) / 2:
    return len(nums) / 2
  return answer

