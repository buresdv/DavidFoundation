//
//  View - On Window Close.swift
//  Cork
//
//  Created by David Bureš on 20.03.2024.
//

#if os(macOS)
import Foundation
import SwiftUI

public extension View
{
    func onWindowClose(action: @escaping () -> Void) -> some View
    {
        self
            .onReceive(NotificationCenter.default.publisher(for: NSWindow.willCloseNotification), perform: { _ in
                action()
            })
    }
}
#endif
