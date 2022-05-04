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

    func pop() {
        if stack.isEmpty {
            print("\nThe stack is empty.")
        } else {
            let topIndex = stack.count - 1
            let topString = stack[topIndex]
            stack.remove(at: topIndex)
            print("\nRemoved \(topString) from the top of the stack.")
        }
    }
}

// Creating object
let myStack = MyStringStack()

while true {
    print("\nDo you wish to use push or pop (enter q to quit)? ", terminator: "")
    let userMethod = readLine()

    if userMethod!.uppercased == "PUSH" {
        midloop: while true {
            print("\nWhat string do you wish to add? ", terminator: "")
            let userString = readLine()

            myStack.push(string: userString!)

            while true {
                print("\nDo you wish to continue? (y/n): ", terminator: "")
                let userAnswer2 = readLine()

                if userAnswer2!.uppercased == "Y" {
                    break
                } else if userAnswer2!.uppercased == "N" {
                    break midloop
                } else {
                    print("\nPlease enter either y or n.")
                }
            }
        }
    } else if userMethod!.uppercased == "POP" {
        myStack.pop()
    } else if userMethod!.uppercased == "Q" {
        break
    } else {
        print("\nPlease enter either push, pop or q to quit.")
    }
}
