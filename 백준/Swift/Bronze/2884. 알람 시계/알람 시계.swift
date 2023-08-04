import Foundation

let line = readLine()!
let lineArr = line.split(separator: " ")
// x는 시 y는 분
var x = Int(lineArr[0])!
var y = Int(lineArr[1])!

// 분에서 45분을 미리 뺴주고 음수일 시 60에서 빼주고 시인 x에서 -1 해줌
y -= 45
if y < 0 {
    y = 60 - (-y)
    x -= 1
}
// 24시간으로 표기하므로 0일 때 24에서 빼줌
if x < 0 {
    x = 24 - (-x)
}
print("\(x) \(y)")
