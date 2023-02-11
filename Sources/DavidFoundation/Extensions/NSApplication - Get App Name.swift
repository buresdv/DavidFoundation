//
//  File.swift
//  
//
//  Created by David Bureš on 11.02.2023.
//

import Foundation
import AppKit

public extension NSApplication
{
    static var appName: String?
    {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String
    }
}
