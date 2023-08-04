//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2022/12/01.

import Foundation

let houseNum = Int(readLine()!)!
var arr = [[Int]]()
var dp = [[Int]](repeating: [Int](repeating: 0, count: 3), count: houseNum) // dp[집번호][RGB색상]

for _ in 0..<houseNum {
    let RGB = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append(RGB)
}

dp[0][0] = arr[0][0]
dp[0][1] = arr[0][1]
dp[0][2] = arr[0][2]

for idx in 1..<houseNum {
    for color in 0..<3 {
        let other1 = (color+1) % 3
        let other2 = (color+2) % 3
        dp[idx][color] = min(dp[idx-1][other1] + arr[idx][color], dp[idx-1][other2] + arr[idx][color])
    }
}

print(min(dp[houseNum-1][0],dp[houseNum-1][1],dp[houseNum-1][2]))
