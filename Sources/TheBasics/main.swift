let constant = 10
var variable = 20
variable = 30
let a = 10
let b = 20
let c = 30
var welcomeMessage: String
welcomeMessage = "Hello, World!"
let red: Double
let green: Double
let blue: Double
red = 0.5
green = 2.2
blue = 6.2
print(red, green, blue)

let cat = "cat"; print(cat)

let minValueInt = Int.min
let maxValueInt = Int.max

let minValueUInt = UInt.min
let maxValueUInt = UInt.max

let minValueFloat = Float.leastNormalMagnitude
let maxValueFloat = Float.greatestFiniteMagnitude

let minValueDouble = Double.leastNormalMagnitude
let maxValueDouble = Double.greatestFiniteMagnitude

// let cannotBeNegative: UInt = -1
// let tooBig: Int8 = Int8.max + 1

var three = 3
var pointOne = 0.1
var threePointOne = Double(three) + pointOne
let pi = 3.14159
let piInt = Int(pi) // 3 truncates the decimal part

typealias AudioSample = UInt16

var maxAmplitude = AudioSample.max // 65535

let orangesAreOrange = true
let turnipsAreDelicious = false

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
let (justTheStatusCode, _) = http404Error // ignore the message

print("Status code is \(http404Error.0)")
print("Status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("Status code is \(http200Status.statusCode)")
print("Status message is \(http200Status.description)")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // Optional Int

var serverResponseCode: Int? = 404
serverResponseCode = nil

if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}

let myNumber: Int? = 123
if let myNumber {
    print("myNumber is \(myNumber)")
} else {
    print("myNumber is nil")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}


if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

let name: String? = nil
let greeting = "Hello, \(name ?? "friend")"
print(greeting)

let number = convertedNumber!


guard let number = convertedNumber else {
    fatalError("The number was invalid")
}

let possibleString: String? = "An optional string"
let forcedString: String = possibleString! // force unwrapping

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString // no need to force unwrap

let optionalString = assumedString // still an optional

if assumedString != nil {
    print(assumedString!)
} else {
    print("assumedString is nil")
}

if let definiteString = assumedString {
    print(definiteString)
} else {
    print("assumedString is nil")
}

func canThrowAnError() throws {

}

do {
    try canThrowAnError()
    // no error
} catch {
    print("Error: \(error)")
}

func makeASandwich() throws {

}

do {
    try makeASandwich()
    // eatASandwich()
} catch let error {
    print("Error: \(error)")
    // washDishes()
} catch let error2 {
    // buyGroceries()
}

let age = -3
assert(age >= 0, "A person's age cannot be less than zero")

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel")
} else if age >= 0 {
    print("You can ride the ferris wheel")
} else {
    assertionFailure("A person's age can't be less than zero")
}

let index = 5
precondition(index > 0, "Index must be greater than zero")