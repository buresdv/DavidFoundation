//
//  File.swift
//  
//
//  Created by David Bureš on 31.05.2022.
//

import Foundation

func getIntervalBetweenDates(from: Date, to: Date) -> DateInterval {
    return to.timeIntervalSince(from)
}
