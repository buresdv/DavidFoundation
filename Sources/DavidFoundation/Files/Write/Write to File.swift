//
//  File.swift
//  
//
//  Created by David Bureš on 26.04.2022.
//

import Foundation

public func writeToFile(newContents: String, atPath path: String) -> Void {
    let filePath: URL = URL(fileURLWithPath: path)
    
    do {
        try newContents.write(to: filePath, atomically: true, encoding: .utf8)
    } catch {
        fatalError("Fuck")
    }
}
