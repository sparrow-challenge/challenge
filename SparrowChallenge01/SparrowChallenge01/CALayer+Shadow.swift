//
//  CALayer+Shadow.swift
//  SparrowChallenge01
//
//  Created by Igor Shvetsov on 03.07.2023.
//

import Foundation
import UIKit

struct Shadow: Equatable {

    public let offsetX: CGFloat
    public let offsetY: CGFloat
    public let radius: CGFloat
    public let color: UIColor?
    public let opacity: Float
    public let cornerRadius: CGFloat?

    public init(offsetX: CGFloat = 6,
                offsetY: CGFloat = 6,
                radius: CGFloat = 10,
                color: UIColor? = UIColor.black,
                opacity: Float = 1,
                cornerRadius: CGFloat? = nil) {
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.radius = radius
        self.color = color
        self.opacity = opacity
        self.cornerRadius = cornerRadius
    }
}

// MARK: - CALayer + Shadow

extension CALayer {

    func dropShadow(_ shadow: Shadow = .init()) {
        
        shadowOffset = CGSize(width: shadow.offsetX, height: shadow.offsetY)
        if let color = shadow.color {
            shadowColor = color.cgColor
        }

        shadowRadius = shadow.radius
        shadowOpacity = shadow.opacity
        shouldRasterize = true
        rasterizationScale = UIScreen.main.scale
    }
}
