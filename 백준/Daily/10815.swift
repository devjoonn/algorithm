//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/18.
//MARK: - 10815
import Foundation

let N = Int(readLine()!)!
let sangCardNum = readLine()!.split(separator: " ").map{ Int($0)! }
let M = Int(readLine()!)!
let cardNum = readLine()!.split(separator: " ").map{ Int($0)! }

var sangCardNumList = [Int]()
var cardNumList = [Int]()
var output: [Int] = [0, 0, 0, 0, 0, 0, 0, 0]

for i in 0..<N {
    sangCardNumList.append(sangCardNum[i])
}
for i in 0..<M {
    cardNumList.append(cardNum[i])
}

for i in 0..<M {
    for j in 0..<N {
        if cardNumList[i] == sangCardNumList[j] {
            output[i] += 1
        }
    }
}

for i in 0..<output.count {
    print(output[i], terminator: " ")
}

// runtime error
