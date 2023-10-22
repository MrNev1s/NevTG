// UIRectCorner.swift

import SwiftUI

extension UIRectCorner {
    mutating func insert(_ firstCorner: UIRectCorner, _ secondCorner: UIRectCorner) {
        self.insert(firstCorner)
        self.insert(secondCorner)
    }
}
