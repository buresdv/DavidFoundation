//
//  File.swift
//  
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

public func loadContentsOfFileIntoString(atPath path: String) -> String {
    return try! String(contentsOfFile: path, encoding: .utf8)
}
