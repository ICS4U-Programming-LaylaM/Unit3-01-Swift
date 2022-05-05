import Foundation

class MyIntStack {
    // Properties
    public var stack: [Int]

    // Constructor
    init() {
        stack = []
    }

    // Adds a number to the top of the stack.
    func push(number: Int) {
        stack.append(number)
        print("Added \(number) to top of the stack.")
    }

    // Removes the number at the top of the stack.
    func pop() {
        if stack.isEmpty {
            print("\nThe stack is empty.")
        } else {
            let topIndex = stack.count - 1
            let topNum = stack[topIndex]
            stack.remove(at: topIndex)
            print("\nRemoved \(topNum) from the top of the stack.")
        }
    }

    // Finds and displays the number at the top of the stack.
    func peek() {
        if stack.isEmpty {
            print("\nThe stack is empty.")
        } else {
            let topIndex = stack.count - 1
            let topNum = stack[topIndex]
            print("\nThe number at the top of the stack is: \(topNum)")
        }
    }

    // Clears the stack of all its numbers.
    func clear() {
        if stack.isEmpty {
            print("\nThe stack is empty.")
        } else {
            stack = []
            print("\nThe stack has been cleared.")
        }
    }
}

// Creating object
let myStack = MyIntStack()

while true {
    print("\nDo you wish to use push, pop, peek or clear"
         + "(enter q to quit)? ", terminator: "")
    let userMethod = readLine()

    // Push method
    if userMethod!.uppercased == "PUSH" {
        midloop: while true {
            print("\nWhat integer do you wish to add? ", terminator: "")
            let userNum = readLine()

            let userNumInt = Int(userNum!) ?? 23847125624345235

            // Error message if user does not input an integer
            if userNumInt == 23847125624345235 {
                print("\nPlease enter a valid number.")
            } else {
                myStack.push(number: userNumInt)

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
        }

    // Pop method
    } else if userMethod!.uppercased == "POP" {
        myStack.pop()

    // Peek method
    } else if userMethod!.uppercased == "PEEK" {
        myStack.peek()

    // Clear method
    } else if userMethod!.uppercased == "CLEAR" {
        myStack.clear()

    // Quits the program
    } else if userMethod!.uppercased == "Q" {
        break

    // If the user does not enter a valid input
    } else {
        print("\nPlease enter either push, pop, peek, clear or q to quit.")
    }
}
