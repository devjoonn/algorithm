#프로그래머스 N으로 표현

def solution(N, number):
  dp = [set([int(str(N)*i)]) for i in range(1,9)]

  # 사용횟수 8 이하
  for i in range(8):
      # j번
      for j in range(i):
          for num1 in dp[j]:
              # 모든 결과 확인
              for num2 in dp[i-j-1]:
                  dp[i].add(num1 + num2)
                  dp[i].add(num1 - num2)
                  dp[i].add(num1 * num2)
                  if num2 != 0:
                      dp[i].add(num1//num2)

      # number가 연산이 저장된 dp에 있다면 답으로 반환
      if number in dp[i]:
          return i+1
  return -1