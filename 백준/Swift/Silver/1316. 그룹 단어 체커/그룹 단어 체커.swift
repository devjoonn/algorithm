import Foundation

let N = Int(readLine()!)!
var count = 0

for _ in 1...N {
    let dict = readLine()!
    var arr:[Character] = []
    
    for j in dict {
        if !arr.contains(j) { // 연속된 수가 없을 때 (그룹단어)
            arr.append(j)
        } else if arr.last != j { // last에 없는데 j를 포함 시 (그룹단어 x)
            break
        } else {
            arr.append(j)
        }
        if dict.count == arr.count {
            count += 1
        }
    }
}

print(count)