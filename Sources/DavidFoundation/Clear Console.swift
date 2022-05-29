//
//  File.swift
//  
//
//  Created by David Bureš on 29.05.2022.
//

import Foundation

/// Clears the console
public func clearConsole() -> Void {
    print("\u{001B}[2J")
}
