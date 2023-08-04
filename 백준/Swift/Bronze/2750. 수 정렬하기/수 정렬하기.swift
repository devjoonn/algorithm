import Foundation

let N = Int(readLine()!)!
var numArr = [Int]()

for _ in 1...N {
    let num = Int(readLine()!)!
    numArr.append(num)
}
numArr.sort()
for i in numArr {
    print(i)
}