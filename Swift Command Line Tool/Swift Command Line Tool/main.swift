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
extension Array where Element: Comparable {
func selectionSort() -> Array<Element> {
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        //mutated copy
        var output: Array<Element> = self
                
        for primaryindex in 0..<output.count {
                        
            var minimum = primaryindex
            var secondaryindex = primaryindex + 1
                        
            while secondaryindex < output.count {
         
          //store lowest value as minimum
                if output[minimum] > output[secondaryindex] {
                    minimum = secondaryindex
                }
                secondaryindex += 1
            }
            
            
            //swap minimum value with array iteration
            if primaryindex != minimum {
            output.swapAt(primaryindex, minimum)
            }
        }
                
        return output
    }
}
let results: Array<Int> = intArray().selectionSort()
print(results)

