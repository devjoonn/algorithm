import Foundation

let X = Int(readLine()!)!
let N = Int(readLine()!)!
var totalList = 0

for _ in 0..<N {
    let priceNum = readLine()!.split(separator: " ")
    let A = Int(priceNum[0])!
    let B = Int(priceNum[1])!
    let total = A * B
    totalList += total
}

if totalList == X {
    print("Yes")
} else {
    print("No")
}