import Foundation

let N = readLine()!
var nList: [Int] = []

for i in N {
    nList.append(Int(String(i))!)
}
nList.sort(by: >)

for j in 0 ..< nList.count {
    print(nList[j], terminator: "")
}