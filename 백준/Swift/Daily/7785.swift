//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/22.
//MARK: - 7785
import Foundation

let n = Int(readLine()!)!
var remainPeople = [String]()

for _ in 0..<n {
    let info = readLine()?.split(separator: " ").map{ String($0) }
    let person = info![0]
    
    if info?[1] == "enter" {
        remainPeople.append(person)
    } else if info?[1] == "leave" {
        if let name = remainPeople.lastIndex(of: person) {
            remainPeople.remove(at: name)
        }
    }
}
remainPeople.sort(by: >)

for i in remainPeople {
    print(i)
}

// 시간초과
