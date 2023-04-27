//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/25.
//MARK: - 2839 (수학적 풀이)
import Foundation

var N = Int(readLine()!)!
var basket = 0

while N >= 3 {
    if N % 5 == 0 {
        basket += 1
        N -= 5
    } else {
        N -= 3
        basket += 1
    }
}

if N == 0 {
    print(basket)
} else {
    print(-1)
}
