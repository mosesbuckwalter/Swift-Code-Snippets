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

func read() -> Array <Int> {
    // Set the file path
    let path = "/Users/mosesbuckwalter/Developer/Xcode/Swift-Code-Snippets/Swift Command Line Tool/Swift Command Line Tool/File"

    do {
        // Get the contents
        let contents = try String(contentsOfFile: path, encoding: .utf8)
        let contentsArr = contents.components(separatedBy: " ")
        let intArray = contentsArr.map { Int($0)!}
        return intArray
        
    }
    catch let error as NSError {
        print("Ooops! Something went wrong: \(error)")
        let broken: Array<Int> = [1, 1, 1, 1, 1, 1, 1, 1]
        return broken
    }
}

extension Array where Element: Comparable {
 func insertionSort() -> Array<Element> {
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        //mutated copy
        var output: Array<Element> = self
        
        for primaryindex in 0..<output.count {
            
            let key = output[primaryindex]
            var secondaryindex = primaryindex
            
            while secondaryindex > -1 {
                if key < output[secondaryindex] {
                    
                    //move to correct position
                    output.remove(at: secondaryindex + 1)
                    output.insert(key, at: secondaryindex)
                }
                secondaryindex -= 1
            }
        }
        return output
    }   }

//execute sort
let list = read()
print(list)
let results: Array<Int> = list.insertionSort()
print(results)

