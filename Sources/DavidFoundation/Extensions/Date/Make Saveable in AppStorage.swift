//
//  File.swift
//  
//
//  Created by David Bureš on 29.07.2024.
//

import Foundation

extension Date: RawRepresentable
{
    public var rawValue: String
    {
        timeIntervalSinceReferenceDate.description
    }
    
    public init?(rawValue: String)
    {
        self = Date(timeIntervalSinceReferenceDate: Double(rawValue) ?? 0.0)
    }
}
