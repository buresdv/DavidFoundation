//
//  File.swift
//  
//
//  Created by David Bureš on 29.07.2024.
//

import Foundation

#if canImport(Darwin)
import SwiftUI
import AppKit

public extension Image
{
    init?(localURL: URL)
    {
        guard let data = try? Data(contentsOf: localURL),
              let nsImage = NSImage(data: data)
        else {
            return nil
        }
        
        self.init(nsImage: nsImage)
    }
}
#endif
