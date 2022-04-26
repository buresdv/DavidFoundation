//
//  File.swift
//  
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

public extension CommandLine {
    
    /// Get arguments passed to the program, without the name of the program itself
    func getArguments() -> [String] {
        var arguments: [String] = CommandLine.arguments
        arguments.remove(at: 0)
        
        return arguments
    }
}
