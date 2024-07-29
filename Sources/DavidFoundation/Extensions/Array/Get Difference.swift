//
//  File.swift
//  
//
//  Created by David Bureš on 29.07.2024.
//

import Foundation

public extension Array where Element: Hashable
{
    func difference(from other: [Element]) -> [Element]
    {
        let thisSet = Set(self)
        let otherSet = Set(other)
        return Array(thisSet.symmetricDifference(otherSet))
    }
}
