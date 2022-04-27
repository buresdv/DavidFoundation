//
//  File.swift
//  
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation
   
/// Get arguments passed to the program, without the name of the program itself
public func getTerminalArguments() -> [String] {
    var arguments: [String] = CommandLine.arguments
    arguments.remove(at: 0)
    
    return arguments
}
