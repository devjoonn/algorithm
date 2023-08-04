import Foundation

let num = Int(readLine()!)!
var total = Array(repeating: Array(repeating: 0, count: 2), count: num) // 2차원배열 ((0.0) * num)
var count = Array(repeating: 1, count: num) // (1, 1, 1, 1, 1)

for i in 0..<num {
    total[i] = readLine()!.split(separator: " ").map{ Int($0)! }
}

for i in 0..<num {
    for j in 0..<num {
        if total[i][0] < total[j][0] && total[i][1] < total[j][1] { // 각 키와 몸무게가 둘 다 만족 시
            count[i] += 1
        }
    }
}

for i in 0..<num {
    print("\(count[i])", terminator: " ")
}