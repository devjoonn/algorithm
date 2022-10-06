import Foundation

while true {
    let num = readLine()!.split(separator: " ").map{Int(String($0))}
    let A = num[0]!
    let B = num[1]!
    
    if A == 0 || B == 0 {
        break
    }
    print(A + B)
}
