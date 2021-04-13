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
import Foundation

enum FileWriteError: Error {
    case directoryDoesntExist
    case convertToDataIssue
}

protocol FileWriter {
    var fileName: String { get }
    func write(_ text: String) throws
}

extension FileWriter {
    var fileName: String { return "File.txt" }

    func write(_ text: String) throws {
        guard let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw FileWriteError.directoryDoesntExist
        }

        let encoding = String.Encoding.utf8

        guard let data = text.data(using: encoding) else {
            throw FileWriteError.convertToDataIssue
        }

        let fileUrl = dir.appendingPathComponent(fileName)

        if let fileHandle = FileHandle(forWritingAtPath: fileUrl.path) {
            fileHandle.seekToEndOfFile()
            fileHandle.write(data)
        } else {
            try text.write(to: fileUrl, atomically: false, encoding: encoding)
        }
    }
}
