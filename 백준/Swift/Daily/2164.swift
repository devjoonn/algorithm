//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/05/06.
//MARK: - 2164
import Foundation

let N = Int(readLine()!)!
var card = Array(1...N)


while true {
    
    card.removeFirst()
    
    if card.count <= 1 {
        break
    }

    if card.count == 2 {
        card.removeLast()
        break
    }
    
    for i in 0..<card.count-1 {
        if card[i] < card[i+1] {
            let temp = card[i+1]
            card[i+1] = card[i]
            card[i] = temp
        }
    }
}

print(card[0])
// 시간 초과
