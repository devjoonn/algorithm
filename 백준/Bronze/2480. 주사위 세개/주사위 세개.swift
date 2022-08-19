import Foundation

let line = readLine()!
let lineArr = line.split(separator: " ")

let a = Int(lineArr[0])!
let b = Int(lineArr[1])!
let c = Int(lineArr[2])!

var sameNum = 0
var returnResult = 0
var maxDice = 0

func sameTwoNumber (n1:Int, n2:Int, n3:Int) -> Int {
    if n1 == n2 || n1 == n3 {
        return n1
    } else if n2 == n3 {
        return n2
    }
    return 0
}

func maxNumber (n1:Int, n2:Int, n3:Int) -> Int {
    var max = 0
    if n1 > n2 && n1 > n3{
        max = n1
    } else if n2 > n1 && n2 > n3 {
        max = n2
    } else if n3 > n1 && n3 > n2{
        max = n3
    }
    return max
}

if a == b && a == c && b == c {
    returnResult = 10000 + a * 1000
} else if a != b && a != c && b != c {
    maxDice = maxNumber(n1: a, n2: b, n3: c)
    returnResult = maxDice * 100
} else {
    sameNum = sameTwoNumber(n1: a, n2: b, n3: c)
    if sameNum != 0{
        returnResult = 1000 + sameNum * 100
    }
}
print(returnResult)