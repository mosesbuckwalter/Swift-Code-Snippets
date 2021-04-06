//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//

import Foundation
func input() -> Int {
    guard let input = readLine() else { return 0 }
    guard let num = Int(input) else { return 0 }
    return(num)
}
func factorial(number: Int) -> Int {
    if number == 0 {
        return 1
    }
    else {
        return number * factorial(number:(number - 1))
    }
}
print("Input a number to have the factorial returned.")
print(factorial(number: input()))
