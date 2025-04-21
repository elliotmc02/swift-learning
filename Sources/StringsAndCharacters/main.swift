let welcomeMessage = "Hello, World!"
let green = 0.5

print("string interpolation: \(welcomeMessage)")
print("\(green * 2)")
print(#"extended string delimiter: \(welcomeMessage)"#)
print(#"6 times 7 is \#(6 * 7)."#)
print("6 times 7 is \(6 * 7).")


let word = "cafe"
print ("the number of characters in \(word) is \(word.count)")

let greeting = "Hello, World!"
let startIndex = greeting.startIndex
let endIndex = greeting.endIndex // endIndex is the position after the last character
let afterStartIndex = greeting.index(after: startIndex)
let beforeEndIndex = greeting.index(before: endIndex)
let offsetIndex = greeting.index(startIndex, offsetBy: 3)

let range = startIndex..<endIndex
print(range)
print(greeting[startIndex...offsetIndex])
print(greeting[startIndex..<offsetIndex])

for index in greeting.indices {
    print("\(greeting[index])")
}