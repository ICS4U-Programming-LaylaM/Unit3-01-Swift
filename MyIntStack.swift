import Foundation

class MyIntStack {
    // Properties
    public var stack: [Int]

    // Constructor
    init() {
        stack = []
    }

    func push(number: Int) {
        stack.append(number)
        print("Added \(number) to top of the stack.")
    }

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
}

// Creating object
let myStack = MyIntStack()

while true {
    print("\nDo you wish to use push or pop (enter q to quit)? ", terminator: "")
    let userMethod = readLine()

    if userMethod!.uppercased == "PUSH" {
        midloop: while true {
            print("\nWhat integer do you wish to add? ", terminator: "")
            let userNum = readLine()

            let userNumInt = Int(userNum!) ?? 23847125624345235

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
    } else if userMethod!.uppercased == "POP" {
        myStack.pop()
    } else if userMethod!.uppercased == "Q" {
        break
    } else {
        print("\nPlease enter either push, pop or q to quit.")
    }
}
