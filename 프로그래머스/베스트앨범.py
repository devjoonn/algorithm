#프로그래머스 베스트앨범

def solution(genres, plays):
  answer = []
  dic1 = {} # 각 장르 노래의 인덱스, 재생 수
  dic2 = {} # 장르별 총 재생 수

  for i, (g, p) in enumerate(zip(genres, plays)):
      if g not in dic1:
          dic1[g] = [(i, p)] # 새로운 키,값 쌍 추가
      else:
          dic1[g].append((i, p)) # 해당 장르의 리스트에 노래의 인덱스와 재생 횟수를 추가

      if g not in dic2:
          dic2[g] = p
      else:
          dic2[g] += p # 해당 장르의 총 재생 수 추가

              # 재생 수가 많은 장르 순으로 정렬 items {key: value} -> [(key:value)]
  for (k, v) in sorted(dic2.items(), key=lambda x:x[1], reverse=True):
                  # 각 장르 내 재생 수가 많은 노래 순으로 정렬
      for (i, p) in sorted(dic1[k], key=lambda x:x[1], reverse=True)[:2]:
          answer.append(i) # 베스트 앨범의 노래의 인덱스 추가

  return answer