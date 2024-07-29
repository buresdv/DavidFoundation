//
//  File.swift
//  
//
//  Created by David Bureš on 29.07.2024.
//

import Foundation

public extension Array
{
    mutating func prepend(_ element: Element)
    {
        return self.insert(element, at: 0)
    }
}

