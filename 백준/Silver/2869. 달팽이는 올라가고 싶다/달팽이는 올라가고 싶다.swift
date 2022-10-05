import Foundation

let num = readLine()!.split(separator: " ").map{Double($0)}

let A = num[0]!
let B = num[1]!
let V = num[2]!

var day = ceil((V-B) / (A-B))
print(Int(day))