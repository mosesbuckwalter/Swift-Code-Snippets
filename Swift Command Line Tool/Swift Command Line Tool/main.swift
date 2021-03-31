//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//

import Foundation
func random() -> Int {
    let number = Int.random(in: 1...100)
    return number
}
func guess() -> Int {
    guard let myguess = readLine() else { return 0 }
    guard let num = Int(myguess) else { return 0 }
    return(num)
}
let number = (random())
print("Guess my number between 1 and 100.")
print("What is my number?")
while (guess()) != number {
    print("Incorrect. Please Try again.")
}
if guess() == number {
    print("Correct!")
    exit(EXIT_SUCCESS)
}
