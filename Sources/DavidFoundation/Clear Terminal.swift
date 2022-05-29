//
//  File.swift
//  
//
//  Created by David Bureš on 29.05.2022.
//

import Foundation

func clearTerminal() -> Void {
    print("\u{001B}[2J")
}
