import Foundation

let T = Int(readLine()!)!

for _ in 0 ..< T {
    let inputAB = readLine()!.split(separator: " ")
    let A = Int(inputAB[0])!
    let B = Int(inputAB[1])!
    print(A + B)
}