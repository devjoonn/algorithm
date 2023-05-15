//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/15.
//MARK: - 26069

import Foundation

let N = Int(readLine()!)!
var dancer: Set<String> = ["ChongChong"] // set 자료형은 중복이 없음


for _ in 0..<N {
    let names = readLine()!.split(separator: " ").map{ String($0) }
    
    if dancer.contains(names[0]) || dancer.contains(names[1]) { // dancer에 ChongChong이 들어갔을 시
        dancer.insert(names[0])
        dancer.insert(names[1])
    }
}

print(dancer.count)
