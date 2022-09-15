import Foundation

let num = readLine()!
let reverse = num.split(separator: " ").map{Int(String( $0.reversed() ))}

print(max(reverse[0]!, reverse[1]!))