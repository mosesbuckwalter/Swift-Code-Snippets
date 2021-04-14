//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//
import Foundation
func intArray() -> Array <Int> {
    // Set the file path
    let path = "/Users/mosesbuckwalter/Developer/Xcode/Swift-Code-Snippets/Swift Command Line Tool/Swift Command Line Tool/File"
    do {
            let numbers = try String(contentsOfFile: path).components(separatedBy: " ")
                .compactMap {Int($0)}
            return numbers
        } catch {
            return [Int]()
        }
}
extension Array where Element: Comparable {
 func insertionSort() -> Array<Element> {
        guard self.count > 1 else {
            return self
        }
        var output: Array<Element> = self
        
        for primaryindex in 0..<output.count {
            
            let key = output[primaryindex]
            var secondaryindex = primaryindex
            
            while secondaryindex > -1 {
                if key < output[secondaryindex] {
                    output.remove(at: secondaryindex + 1)
                    output.insert(key, at: secondaryindex)
                }
                secondaryindex -= 1
            }
        }
        return output
    }   }
let results: Array<Int> = intArray().insertionSort()
print(results)
