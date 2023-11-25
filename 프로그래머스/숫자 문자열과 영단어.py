#프로그래머스 카카오 숫자 문자열과 영단어

def solution(s):
  answer = []
  result = ""
  word = ""
  num_list = ['zero', 'one', 'two', 'three', 'four', 
          'five', 'six', 'seven', 'eight', 'nine']
  s += "a"

  for i in s:
      if word in num_list:
              answer.append(num_list.index(word))
              word = ""

      if i.isdigit():
          # 숫자 추가
          answer.append(i)
      else:
          word += i

  for i in answer:
      result += str(i)

  return int(result)