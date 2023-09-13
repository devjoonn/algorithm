# 부분 배낭 예제
data_list = [(10,10), (15,12), (20,10), (25,8), (30,5)]

# 함수화
def get_max_value(data_list, bagWeight):
  data_list = sorted(data_list, key=lambda x: x[1]/x[0], reverse=True)
  total_weight = 0
  detail = list()
  
  for data in data_list:
    if bagWeight - data[0] >= 0:
      bagWeight -= data[0]
      total_weight += data[0]
      detail.append([data[0], data[1], 1])
    else:
      percent = bagWeight / data[0]
      total_weight += data[0] * percent
      detail.append([data[0], data[1], percent])
      break
      
  return total_weight, detail

print(get_max_value(data_list, 30))

# 일반
data_list = [(10,10), (15,12), (20,10), (25,8), (30,5)]
data_list.sort(key=lambda x: x[1]/x[0], reverse = True)
bag_weight = 30
total_weight = 0
detail = list()

for data in data_list:
  if bag_weight - data[0] >= 0:
    bag_weight -= data[0]
    total_weight += data[0]
    detail.append([data[0], data[1], 1])
  else:
    percent = bag_weight / data[0]
    bag_weight -= data[0]
    total_weight += data[0] * percent
    detail.append([data[0], data[1], percent])
    break

print(detail)
