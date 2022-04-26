//
//  File.swift
//  
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

public func existsAtPath(atPath path: String) -> Bool {
    if AppConstants.fileManager.fileExists(atPath: path) {
        return true
    } else {
        return false
    }
}
