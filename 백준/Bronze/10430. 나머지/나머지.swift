import Foundation

let abc = readLine()!.split(separator:" ").map{Int(String($0))!}
let a = abc[0]
let b = abc[1]
let c = abc[2]
print((a+b)%c)
print(((a%c)+(b%c))%c)
print((a*b)%c)
print(((a%c)*(b%c))%c)
