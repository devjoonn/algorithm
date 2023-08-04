import Foundation

let num = readLine()!.split(separator: " ").map{ Int($0)! }
let n = num[0]
let m = num[1]
var arr = [[String]]()
var res = 999

for _ in 0..<n {
    arr.append(readLine()!.map{ String($0) })
}

for i in 0..<n-7 {
    for j in 0..<m-7 {
        var count = 0
        
        for x in 0..<8 {
            for y in 0..<8 {
                if x%2 == 1 {
                    if y%2 == 1, arr[i+x][j+y] == "B" {
                        count += 1
                    } else if y%2 == 0, arr[i+x][j+y] == "W" {
                        count += 1
                    }
                } else { // x%2 == 0
                    if y%2 == 1, arr[i+x][j+y] == "W" {
                        count += 1
                    } else if y%2 == 0, arr[i+x][j+y] == "B" {
                        count += 1
                    }
                }
            }
        }
        count = min(count, 64-count)
        res = min(res, count)
    }
}

print(res)