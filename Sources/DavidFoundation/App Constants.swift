//
//  File.swift
//  
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

public struct AppConstants {
    static let fileManager = FileManager.default
    
    public init(fileManager: FileManager) {
        self.fileManager = fileManager
    }
}
