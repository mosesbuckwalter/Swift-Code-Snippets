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
     
    while input() != "EXIT" {
        // Set the contents
        let fileContentToWrite = String(input())
      
        do {
            // Write contents to file
            try fileContentToWrite.write(toFile: filePath, atomically: false, encoding: String.Encoding.utf8)
        }
        catch let error as NSError {
            print("An error took place: \(error)")
        }
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
func add() {
    class Logger {

        static var logFile: URL? {
            guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
           
            let fileName = "file.txt"
            return documentsDirectory.appendingPathComponent(fileName)
        }

        static func log(_ message: String) {
            guard let logFile = logFile else {
                return
            }

            let data = input()
            

            if FileManager.default.fileExists(atPath: logFile.path) {
                if let fileHandle = try? FileHandle(forWritingTo: logFile) {
                    fileHandle.seekToEndOfFile()
                    fileHandle.write(data)
                    fileHandle.closeFile()
                }
            } else {
                try? data.write(to: logFile, options: .atomicWrite)
            }
        }
    }
}
add()
