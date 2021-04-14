//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//
import Foundation
func intArray() -> Array <Int> {
    let path = "/Users/mosesbuckwalter/Developer/Xcode/Swift-Code-Snippets/Swift Command Line Tool/Swift Command Line Tool/File"
    do {
            let numbers = try String(contentsOfFile: path).components(separatedBy: " ")
                .compactMap {Int($0)}
            return numbers
        } catch {
            return [Int]()
        }
}




let results = intArray().sorted(by: >)
print(results)

