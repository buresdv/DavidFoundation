//
//  File.swift
//  
//
//  Created by David Bureš on 18.03.2023.
//

import Foundation

public struct TerminalOutput
{
    var standardOutput: String
    var standardError: String
}

public enum StreamedTerminalOutput
{
    case standardOutput(String)
    case standardError(String)
}
