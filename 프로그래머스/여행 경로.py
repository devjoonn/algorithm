#프로그래머스 여행 경로
from collections import defaultdict

def solution(tickets):
    d = defaultdict(list)

    for ticket in tickets:
        d[ticket[0]].append(ticket[1])

    # 알파벳 순서로 정렬
    for key in d.keys():
        d[key].sort(reverse=True)

    stack = ["ICN"]
    path = []

    while stack:
        top = stack[-1]

        # 해당 나라 출발 티켓 없을 시 
        if top not in d or len(d[top]) == 0:
            path.append(stack.pop())
        else:
            stack.append(d[top].pop())

    return path[::-1]