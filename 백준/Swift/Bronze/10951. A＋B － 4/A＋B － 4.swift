while let inputString = readLine() {
    let inputArr = inputString.split(separator: " ").map{ Int(String($0))! }
    print(inputArr[0] + inputArr[1])
}