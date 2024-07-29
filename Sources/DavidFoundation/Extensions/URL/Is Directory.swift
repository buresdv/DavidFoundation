//
//  URL - Is Directory.swift
//  Cork
//
//  Created by David Bureš on 07.07.2024.
//

import Foundation

public extension URL
{
    var isDirectory: Bool
    {
        return (try? resourceValues(forKeys: [.isDirectoryKey]))?.isDirectory == true
    }
}
