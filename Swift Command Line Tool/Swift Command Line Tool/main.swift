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
    let fileName = "File"
      var filePath = ""
      
      // Fine documents directory on device
      let dirs : [String] = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true)
      
      if dirs.count > 0 {
          let dir = dirs[0] //documents directory
          filePath = dir.appending("/" + fileName)
          print("Local path = \(filePath)")
      } else {
          print("Could not find local directory to store file")
          return
      }
    let arrayInput : Array<String> = []
    let something = arrayInput
    while input() != "EXIT" {
        let arrayItem = input()
        
    }
    // Set the contents
    let fileContentToWrite = writefile
      
    do {
        // Write contents to file
        try fileContentToWrite.write(toFile: filePath, atomically: false, encoding: String.Encoding.utf8)
        }
    catch let error as NSError {
        print("An error took place: \(error)")
    }

    // Read file content. Example in Swift
    do {
        // Read file content
        let contentFromFile = try NSString(contentsOfFile: filePath, encoding: String.Encoding.utf8.rawValue)
        print(contentFromFile)
    }
    catch let error as NSError {
        print("An error took place: \(error)")
    }
}


