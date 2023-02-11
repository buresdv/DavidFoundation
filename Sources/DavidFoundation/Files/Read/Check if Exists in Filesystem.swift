//
//  File.swift
//
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

/// For the provided path, returns `true` if a file or folder exists, and `false` if not
public func existsAtPath(atPath path: String) -> Bool
{
    if FileManager.default.fileExists(atPath: path)
    {
        return true
    }
    else
    {
        return false
    }
}
