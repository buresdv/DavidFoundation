//
//  File.swift
//
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

/// Types of messages, depending on their purpose
public enum TextDecoration: String
{
    case header = ">>>"
    case helper = "<?>"
    case success = "<✔>"
    case error = "<X>"
    case warning = "<!>"
    case systemInfo = "..."
    case none = ""
}

/// Spacing around the sent messages
public enum SpacesAroundMessage: String
{
    case before
    case after
    case no
}

/// Message colors
public enum MessageColors: String
{
    case white = "\u{001B}[0;37m"
    case black = "\u{001B}[0;30m"

    case inverted = "\u{001B}[0;47;30m"

    case red = "\u{001B}[0;31m"
    case green = "\u{001B}[0;32m"
    case yellow = "\u{001B}[0;33m"
    case blue = "\u{001B}[0;34m"
    case magenta = "\u{001B}[0;35m"
    case cyan = "\u{001B}[0;36m"

    case reset = "\u{001B}[0m"
}

public enum MessageDecorations: String
{
    case normal = ""
    case bold = "\u{001B}[1m"
    case underline = "\u{001B}[4m"
}

/// The function that writes formatted messages to the console
/// Has to have those nils so they don't have to be included in the function call
public func writeToConsole(message: String, format: TextDecoration, forceNewline: SpacesAroundMessage? = nil, messageColor: MessageColors? = nil, messageDecoration: MessageDecorations? = nil)
{
    /// The default message template that's used no matter what
    var messageTemplate: String
    if format == .none
    {
        messageTemplate = "\(message)"
    }
    else
    {
        messageTemplate = "\(format.rawValue) \(message)"
    }

    /// If there's a color defined, color the line
    if messageColor != nil
    {
        messageTemplate = "\(messageColor!.rawValue)\(messageTemplate)"
    }

    /// If there's decorations defined, decorate
    if messageDecoration != nil
    {
        messageTemplate = "\(messageDecoration!.rawValue)\(messageTemplate)"
    }

    /// Assemble the final message and reset at the end of the line
    messageTemplate = "\(messageTemplate)\(MessageColors.reset.rawValue)"

    /// See if the user wants there to be any new lines around the message
    if forceNewline == nil || forceNewline == .no
    {
        print(messageTemplate)
    }
    else if forceNewline == .before
    {
        print("\n\(messageTemplate)")
    }
    else
    {
        print("\(messageTemplate)\n")
    }
}
