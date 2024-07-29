//
//  View - Platform Conditional.swift
//  Cork
//
//  Created by David Bureš on 11.03.2024.
//

#if os(macOS)
    import Foundation
    import SwiftUI

    public extension View
    {
        func modify<T: View>(@ViewBuilder modifier: (Self) -> T) -> T
        {
            modifier(self)
        }
    }
#endif
