//
//  File.swift
//  
//
//  Created by David Bureš on 29.07.2024.
//

import Foundation

#if canImport(Darwin)
import SwiftUI

public prefix func ! (value: Binding<Bool>) -> Binding<Bool> {
    Binding<Bool>(
        get: { !value.wrappedValue },
        set: { value.wrappedValue = !$0 }
    )
}
#endif
