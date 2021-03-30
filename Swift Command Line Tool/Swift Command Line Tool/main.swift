//
//  name.swift
//  Swift Command Line Tool
//
//  Created by Moses Buckwalter on 3/29/21.
//

import Foundation
func name() -> Void {
    print("What is your name?")
    if let str = readLine(){
        print("Hello \(str)")
    }
}
name()
