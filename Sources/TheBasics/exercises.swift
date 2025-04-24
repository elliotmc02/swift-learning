/* 
Exercise 1: Constants, variables and type annotations
Create constants and variables to represent information about a book, including:
- Title (constant)
- Author (constant)
- Publication year (constant)
- Current page (variable)
- Whether you've finished reading it (variable)

Use appropriate type annotations and print each value with descriptive lables
*/

func exercise1() {
    let title: String = "Title 1"
    let author: String = "Author 1"
    let publicationYear: Int = 2025
    var currentPage: Int = 1
    var finishedReading: Bool = false

    print("Title: \(title)")
    print("Author: \(author)")
    print("Publication Year: \(publicationYear)")
    print("Current Page: \(currentPage)")
    print("Finished Reading: \(finishedReading)")
}

/*
Exercise 2: Type Safety and Type Inference

1. Create variables using type inference for different data types (Int, Double, String, Bool)
2. Try to assign a value of one type to a variable of another type and explain why it succeeds or fails
3. Create a type alias for a coordinate system and use it in a practical example
*/

func exercise2() {
    var age = 12
    var height = 2.5
    var name = "John Doe"
    var isTrue = true

    // age = "Hello" // Fails because "Hello" is a string and age is an Int
    // height = 3 // Fails because 3 is an Int and height is a Double
    // name = 123 // Fails because 123 is an Int and name is a String
    // isTrue = 1 // Fails because 1 is an Int and isTrue is a Bool

    typealias Coordinate = (x: Double, y: Double)
    var point: Coordinate = (3.5, 4.2)
    print("X: \(point.x), Y: \(point.y)")
}

/*
Exercise 3: Numeric Conversion

1. Create constants for distance in kilometers (Double) and meters (Int)
2. Convert between them using explicit conversion
3. Calculate the average of three integers and ensure the result is a Double
*/

func exercise3() {
    let kilometers = 5.0
    let meters = Int(kilometers * 1000)

    let kilometersToMeters = Int(kilometers) * 1000
    let metersToKilometers = Double(meters) / 1000

    let n1 = 5
    let n2 = 10
    let n3 = 7

    let average = Double(n1 + n2 + n3) / 3

    print("Kilometers: \(kilometers), Meters: \(meters)")
    print("Kilometers to Meters: \(kilometersToMeters)")
    print("Meters to Kilometers: \(metersToKilometers)")
    print("Average: \(average)")
}

/*
Exercise 4: Tuples

1. Create a tuple representing a geolocation (latitude, longitude)
2. Create a tuple representing a HTTP status (code, message)
3. Access tuple values using both index numbers and named elements
4. Decompose a tuple into individual constants or variables
*/

func exercise4() {
    let geolocation = (latitude: 30, longitude: 40)
    let httpStatus = (code: 200, message: "OK")

    print("Geolocation: Latitude: \(geolocation.0), Longitude: \(geolocation.1)")
    print("HTTP Status: Code: \(httpStatus.0), Message: \(httpStatus.1)")
    print("Geolocation: Latitude: \(geolocation.latitude), Longitude: \(geolocation.longitude)")
    print("HTTP Status: Code: \(httpStatus.code), Message: \(httpStatus.message)")

    let (lat, long) = geolocation
    let (code, message) = httpStatus
    print("Geolocation: Latitude: \(lat), Longitude: \(long)")
    print("HTTP Status: Code: \(code), Message: \(message)")
}

/*
Exercise 5: Optionals and Optional Binding

1. Create a function that converts a String to an Int, returning an optional
2. Use optional binding to safely unwrap the result
3. Provide a fallback value for cases where the conversion fails
4. Demonstrate the difference between force unwrapping and optional binding with examples
*/

func exercise5() {
    func stringToInt(str: String) -> Int? {
        if let converted = Int(str) {
            return converted
        } else {
            return nil
        }

        // forced unwrapping
        // let forcedUnwrap = Int(str)! // it will fail if str cant be converted to Int
    }
}

/*
Exercise 6: Error Handling

1. Create an enum that defines possible errors for a simple banking operation
2. Write a function that may throw these errors
3. Use a do-catch block to handle potential errors
*/

func exercise6() {
    enum BankingError: Error {
        case insufficientFunds
        case invalidAccount
    }

    func withdraw(amount: Double, accountBalance: Double) throws {
        do {
            if amount > accountBalance {
                throw BankingError.insufficientFunds
            }
        } catch BankingError.insufficientFunds {
            print("Insufficient funds")
        }
    }
}

/*
Exercise 7: Assertions and Preconditions

1. Write a function that uses assertions to validate input parameters
2. Write another function that uses preconditions for validation
3. Explain when you would use assertions vs. preconditions
*/

func exercise7() {
    func validateInput(value: Int) {
        assert(value > 0, "Value should be greater than 0")
    }

    func validatePrecondition(value: Int) {
        precondition(value > 0, "Value must be greater than 0")
    }

    // I use assertions during development to catch bugs
    // I use preconditions in production code to ensure that the program behaves correctly
}