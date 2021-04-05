//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//

import Foundation
func input() -> Float {
    guard let input = readLine() else { return 0 }
    guard let num = Float(input) else { return 0 }
    return(num)
}
func convert(number: Float) -> Float {
    let conversion = (number - 32) * (5/9)
    return conversion
}
print("Input a number in Fahrenheit to convert to Celsius.")
print(String(convert(number:input())) + "°C")
