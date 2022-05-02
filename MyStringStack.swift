import Foundation

class MyStringStack {
    // Properties
    public var stack: [String]

    // Constructor
    init() {
        stack = []
    }

    func push(string: String) {
        stack.append(string)
        print("Added \(string) to top of the stack.")
    }
}

// Creating object
let myStack = MyStringStack()

outerloop: while true {
    while true {
        print("\nWhat string do you wish to add? ", terminator: "")
        let userString = readLine()

        myStack.push(string: userString!)

        while true {
            print("\nDo you wish to continue? (y/n): ", terminator: "")
            let userAnswer2 = readLine()

            if userAnswer2!.uppercased == "Y" {
                break
            } else if userAnswer2!.uppercased == "N" {
                break outerloop
            } else {
                print("\nPlease enter either y or n.")
            }
        }
    }
}
