import Foundation

let first = Int(readLine()!)!
let second = Int(readLine()!)!

let A = first*(second%10)
let B = first*((second%100)/10)
let C = first*(second/100)
let D = first*second

print(A)
print(B)
print(C)
print(D)