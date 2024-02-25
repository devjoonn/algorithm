// 백준 12789
let n = Int(readLine()!)!
var student = Array(readLine()!.split(separator: " ").map { Int($0)! }.reversed())

var stack = [Int]()
var index = 1

while !student.isEmpty {
  let person = student.popLast()!

  if person == index {
    index += 1

    while !stack.isEmpty && stack.last == index {
      _ = stack.popLast()
      index += 1
    }
  } else {
    stack.append(person)
  }
}

print(stack.isEmpty ? "Nice" : "Sad")