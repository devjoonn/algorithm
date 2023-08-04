//
//  main.swift
//  algolithm
//
//  Created by 박현준 on 2022/12/01.

//MARK: BJ 10810
import Foundation

let nm = readLine()!.split(separator: " ").map{ Int($0)! }

let n = nm[0] // 바구니 갯수
let m = nm[1] // 공을 던진 시도 횟수
var basket = [Int](repeating: 0, count: n)


for _ in 0..<m {
    let ijk = readLine()!.split(separator: " ").map{ Int($0)! }
    let start = ijk[0] // i번 바구니부터
    let end = ijk[1] // j번 바구니까지
    let num = ijk[2] // k번 공이 들어감
    let gap = end-start

    for z in 0..<gap+1 {
        basket[(start-1) + z] = num
    }
}

basket.forEach {
    print($0, terminator: " ")
}

// 0 0 0 0 0
// 3 3 0 0 0
// 3 3 4 4 0
// 1 1 1 1 0
// 1 2 1 1 0
