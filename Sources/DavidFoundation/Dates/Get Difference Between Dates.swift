//
//  File.swift
//
//
//  Created by David Bureš on 31.05.2022.
//

import Foundation

@available(macOS 10.12, *)
public func getIntervalBetweenDates(from: Date, to: Date) -> TimeInterval
{
    return to.timeIntervalSince(from)
}
