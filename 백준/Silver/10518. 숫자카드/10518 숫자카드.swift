import Foundation

var cardList = [Int]()
var haveCardList = [Int]()
var count = [0,0,0,0,0,0,0,0]

let firstLine = Int(readLine()!)!
let cardListA = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<cardListA.count {
    cardList.append(cardListA[i])
}
cardList.sort()

let secondLine = Int(readLine()!)!
let cardListB = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<cardListB.count {
    haveCardList.append(cardListB[i])
}

for i in 0..<cardList.count {
    for j in 0..<haveCardList.count {
        if cardList[i] == haveCardList[j] {
            count[j] = 1
        }
    }
}
print(count)
