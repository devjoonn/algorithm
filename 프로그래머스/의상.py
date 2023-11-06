#프로그래머스 의상

def solution(clothes):
    closet = {}

    # 종류 이름 저장
    for name, kind in clothes:
        if kind in closet.keys():
            closet[kind] += [name]
        else:
            closet[kind] = [name]

    answer = 1
    for _, value in closet.items():
        # 해당 옷을 선택하지 않은 경우도 포함
        answer *= len(value)+1

    # 모든 옷 중 아무것도 선택하지 않은 경우 제외
    return answer-1