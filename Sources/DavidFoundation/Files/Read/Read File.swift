//
//  File.swift
//
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

/// Takes the contents of a text file and loads them into a string
public func loadContentsOfFileIntoString(atPath path: String) -> String
{
    return try! String(contentsOfFile: path, encoding: .utf8)
}
