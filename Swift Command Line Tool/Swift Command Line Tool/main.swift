//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//
import Foundation
func input() -> String {
    let input = readLine()
    let value = (input)
    return(value ?? "EXIT")
}
func write() {
    let filePath = "/Users/mosesbuckwalter/Developer/Xcode/Swift-Code-Snippets/Swift Command Line Tool/Swift Command Line Tool/File"
    var arrayInput: [String] = []
    while input() != "EXIT" {
        arrayInput.append(input())
        input()
        print(arrayInput)
    }
    let joinedStrings = arrayInput.joined(separator: "\n")

    do {
        try joinedStrings.write(toFile: filePath, atomically: true, encoding: .utf8)
    } catch let error {
        // handle error
        print("Error on writing strings to file: \(error)")
    }
}
write()
