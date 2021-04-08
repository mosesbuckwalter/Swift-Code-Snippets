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
func read() {
    // Set the file path
    let path = "/Users/mosesbuckwalter/Developer/Xcode/Swift-Code-Snippets/Swift Command Line Tool/Swift Command Line Tool/File"

    do {
        // Get the contents
        let contents = try String(contentsOfFile: path, encoding: .utf8)
        print(contents)
    }
    catch let error as NSError {
        print("Ooops! Something went wrong: \(error)")
    }
}
read()
while input() != "EXIT" {
    input()
    
}
