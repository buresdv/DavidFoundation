//
//  File.swift
//  
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

/// Types of messages, depending on their purpose
public enum TextDecoration: String {
    case header     = ">>>"
    case helper     = "<?>"
    case success    = "<✔>"
    case error      = "<X>"
    case warning    = "<!>"
    case systemInfo = "..."
    case none       = ""
}
/// Spacing around the sent messages
public enum SpacesAroundMessage: String {
    case before
    case after
    case no
}

/// The function that writes formatted messages to the console
public func writeToConsole(message: String, format: TextDecoration, forceNewline: SpacesAroundMessage?) -> Void {
    
    /// The default message template that's used no matter what
    let messageTemplate: String = "\(format.rawValue) \(message)"
    
    /// See if the user wants there to be any new lines around the message
    if forceNewline == nil || forceNewline == .no {
        print(messageTemplate)
    } else if forceNewline == .before {
        print("\n")
        print(messageTemplate)
    } else {
        print(messageTemplate)
        print("\n")
    }
}

