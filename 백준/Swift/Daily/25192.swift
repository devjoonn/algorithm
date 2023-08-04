//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/22.
//MARK: - 25192 인사성 밝은 곰곰이
import Foundation

let N = Int(readLine()!)!
var nickNames = Set<String>() // 처음 채팅 입력하는 것을 set으로 판단
var count = 0

for _ in 0..<N {
    let name = readLine()!
    
    if name == "ENTER" {
        nickNames.removeAll()
        continue
    }
    
    count += nickNames.contains(name) ? 0 : 1 // 확인
    nickNames.insert(name)
}

print(count)
