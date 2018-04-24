//
//  factorial.swift
//  This program Calculates the factorial of the input
//
//  Created by Matthew Lourenco on 23/04/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

class Factorial {
	
	var number: Int = 0
	
	init(numberIn: Int) {
		//Default constructor
		if numberIn > 0 {
			number = numberIn
			findFactorial(unprocessed: number)
		} else if numberIn == 0  {
			number = 1
		} else {
			print("Inputted number is less than 0")
		}
	}
	
	func findFactorial(unprocessed: Int) {
		//multiply number by unprocessed - 1 until unprocessed == 2
		let newNumber: Int = unprocessed - 1
		if newNumber > 1 {
			number *= newNumber
			print(number)
			findFactorial(unprocessed: newNumber)
		}
	}
	
	func getfactorial() -> Int { return number } //getter
}

print("Enter an integer: ")
let input: String? = readLine(strippingNewline: true)
if Int(input!) != nil {
	let inputNumber: Int = Int(input!)!
	let factorial = Factorial(numberIn: inputNumber)
	print("Original: \(inputNumber) \nFactorial: \(factorial.getfactorial())")
} else {
	print("Input is not an integer")
}