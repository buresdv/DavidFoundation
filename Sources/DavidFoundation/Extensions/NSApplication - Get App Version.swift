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
    static var appVersion: String?
    {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }

    static var buildVersion: String?
    {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
}
