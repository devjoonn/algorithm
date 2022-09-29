import Foundation

let NK = readLine()!.split(separator: " ").map{ Int(String($0)) }

let N1 = NK[0]!
let N2 = NK[1]!

let x = readLine()!.split(separator: " ").map{ Int(String($0)) }
var xlist = [Int]()

for i in x {
    xlist.append(i!)
}
xlist.sort()
xlist.reverse()
print(xlist[N2-1])