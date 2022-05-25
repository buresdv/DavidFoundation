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
/// Message colors
public enum MessageColors: String {
    case white      = "\u{001B}[0;37m"
    case black      = "\u{001B}[0;30m"
    
    case inverted   = "\u{001B}[0;47;30m"
    
    case red        = "\u{001B}[0;31m"
    case green      = "\u{001B}[0;32m"
    case yellow     = "\u{001B}[0;33m"
    case blue       = "\u{001B}[0;34m"
    case magenta    = "\u{001B}[0;35m"
    case cyan       = "\u{001B}[0;36m"
    
    case reset      = "\u{001B}[0;0m"
}

/// The function that writes formatted messages to the console
public func writeToConsole(message: String, format: TextDecoration, forceNewline: SpacesAroundMessage?, messageColor: MessageColors?) -> Void {
    
    /// The default message template that's used no matter what
    var messageTemplate: String = "\(format.rawValue) \(message)"
    
    /// If there's a color defined, color the line and reset the color at the end
    if messageColor != nil {
        messageTemplate = "\(messageColor!.rawValue)\(messageTemplate)\(MessageColors.reset.rawValue)"
    }
    
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
