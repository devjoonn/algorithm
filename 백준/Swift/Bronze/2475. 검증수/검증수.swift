import Foundation

let num = readLine()!.split(separator: " ").map{ Int(String($0))! }

let one = num[0] * num[0]
let two = num[1] * num[1]
let three = num[2] * num[2]
let four = num[3] * num[3]
let five = num[4] * num[4]

let uniqueNum = (one + two + three + four + five) % 10
print(uniqueNum)