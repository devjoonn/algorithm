import Foundation

let firstLine = readLine()!.components(separatedBy: " ")
let secondLine = readLine()!.components(separatedBy: " ")


for i in secondLine {
    if Int(i)! < Int(firstLine[1])! {
        print(i)
    }
}