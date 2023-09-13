# 동전 그리디 예제
import sys

total_price = 4720
price = [10, 50, 100, 500]
coinCnt = 0
price_index = 0

price.sort(reverse=True)

while True:
  if total_price <= 0:
    break
  
  coinCnt += total_price // price[price_index] 
  total_price %= price[price_index]
  price_index += 1

print(coinCnt)
