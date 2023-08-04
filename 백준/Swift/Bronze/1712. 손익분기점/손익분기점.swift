import Foundation

let input = readLine()!
let inputArr = input.split(separator: " ").map{ Int(String($0))! }

let bep = inputArr[2] - inputArr[1] //순이익

if inputArr[2] <= inputArr[1] {
    print(-1)
} else {
    print(inputArr[0] / bep + 1)
}