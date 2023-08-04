//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2023/04/16.
//MARK: - 2444
import Foundation

let N = Int(readLine()!)!

for i in 1...N {
    for _ in 0..<N-i {
        print(" ", terminator: "")
    }
    for _ in 0..<2*i-1 {
        print("*" , terminator: "")
    }
    print("")
}

for j in 1..<N {
    for _ in 0..<j {
        print(" " , terminator: "")
    }
    for _ in 0..<2*(N-j)-1 {
        print("*" , terminator: "")
    }
    print("")
}
