import Foundation

var listN = [Int]()
var averageNum: Int = 0
let middle: Int
let middleNum: Int = 0


for _ in 0..<5 {
    let num = Int(readLine()!)!
    listN.append(num)
}

for i in listN {
    averageNum += i
}
averageNum = averageNum / listN.count

middle = listN.count / 2
listN.sort()

print(averageNum)
print(listN[middle])