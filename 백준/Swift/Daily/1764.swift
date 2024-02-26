// 백준 1764
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]
var checkDict: [String: Bool] = [:]
var result = [String]()


for _ in 0..<n {
  let name = readLine()!
  checkDict[name, default: false] = true
}

for _ in 0..<m {
  let name = readLine()!
  if checkDict[name, default: false] == true {
    result.append(name)
  }
}

print(result.count)
result.sort()
for i in result {
  print(i) 
}