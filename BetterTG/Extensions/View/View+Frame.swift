// View+Frame.swift

import SwiftUI

extension View {
    @ViewBuilder func frame(size: CGSize, alignment: Alignment = .center) -> some View {
        frame(width: size.width, height: size.height, alignment: alignment)
    }
}
