//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//

import Foundation
func input() -> String {
    guard let input = readLine() else { return "no" }
    let name = String(input)
    return(name)
}
func reverse(string:String) -> String {
    var reverse = ""
    for char in string {
        reverse = "\(char)" + reverse
    }
    return reverse
}
print("Input a string to have it reversed.")
print(reverse(string: input()))
