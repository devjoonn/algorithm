import Foundation

let chess = [1,1,2,2,2,8]
let a = readLine()!.split(separator:" ").map{Int(String($0))!}
for i in 0..<chess.count {
    print(chess[i] - a[i] , separator: " ")
}