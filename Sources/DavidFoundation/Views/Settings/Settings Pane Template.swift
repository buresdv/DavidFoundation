//
//  SwiftUIView.swift
//  
//
//  Created by David Bureš on 13.02.2023.
//

import SwiftUI

@available(macOS 10.15, *)
struct SettingsPaneTemplate<Content: View>: View {
    // Pass whatever gets panned into this view into the variable "paneContent"
    @ViewBuilder var paneContent: Content

    var body: some View
    {
        paneContent
            .padding()
    }
}
