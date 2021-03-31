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
    let myguess = Int(readLine()!)!
    return myguess
}
func guess2() -> Int {
    guard let myguess2 = readLine() else { return 0 }
    guard let num = Int(myguess2) else { return 0 }
    return(num)
}
func guess3() -> Int {
    guard let myguess3 = readLine() else { return 0 }
    guard let num = Int(myguess3) else { return 0 }
    return(num)
}
let number = (random())
print(number)
print("What is my number?")

while (guess3()) != number {
    print("Incorrect. Please Try again.")
}

if guess3() == number {
    print("Correct!")
    exit(EXIT_SUCCESS)
}


