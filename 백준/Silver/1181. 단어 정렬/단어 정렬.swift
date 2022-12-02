import Foundation

let N = Int(readLine()!)!
var array: [String] = []
var count = 0

for _ in 1...N {
    let a = readLine()!
    array.append(a)
}

// 문자열 길이 순으로 정렬
array = Array(Set(array).sorted(by: {$0 < $1}).sorted(by: {$0.count < $1.count}))

for i in array {
    print(i)
}
