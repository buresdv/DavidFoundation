//
//  View - Fill Available Space.swift
//  Cork
//
//  Created by David Bureš on 30.03.2024.
//

#if os(macOS)
    import Foundation
    import SwiftUI

    public extension View
    {
        @ViewBuilder func fillAvailableSpace() -> some View
        {
            self
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
    }
#endif
