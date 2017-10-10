//
//  main.swift
//  SimpleCalc
//
//  Created by Arden Kim on 10/9/17.
//

import Foundation

print("Enter an expression separated by returns: ")

let response = readLine(strippingNewline: true)!
var inputArray = response.split(separator: " ")
if (inputArray.count == 1) {
    let num1 = Double(UInt.init(response)!)
    let operand = readLine(strippingNewline: true)!
    let num2 = Double(UInt.init(readLine(strippingNewline: true)!)!)
    
    var result = 0.0
    var valid = true
    switch operand {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        result = num1 / num2
    case "%":
        result = num1.truncatingRemainder(dividingBy: num2)
    default:
        valid = false
        print("invalid operation")
    }
    if (valid) {
        print("Result: \(result)")
    }
} else {
    let numCount = inputArray.count - 1
    let operand = inputArray[numCount]
    
    switch operand {
        case "count":
            print(numCount)
        case "avg":
            var total = 0.0
            for i in 0 ..< numCount {
                total += Double(UInt.init(inputArray[i])!)
            }
            let avg = total / Double(numCount)
            print(avg)
        case "fact":
            if (numCount != 1) {
                print("Invalid operation")
            } else {
                let numInt = Int.init(inputArray[0])!
                var fact = 1
                for i in 1 ... numInt {
                    fact *= i
                }
                print(fact)
            }
        default:
            print("Invalid operation")
    }
}
