//
//  GradientView.swift
//  SparrowChallenge01
//
//  Created by Igor Shvetsov on 03.07.2023.
//

import UIKit

final class GradientView: UIView {
    
    override class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }

    var gradientColors: [UIColor] = [] {
        didSet {
            setupColors()
        }
    }
    
    // MARK: - Private
    
    private func setupColors() {
        guard let gradient = layer as? CAGradientLayer else { return }
        gradient.colors = gradientColors.compactMap { $0.cgColor }
        
        // TODO: allow setup outside class
        // from top left corner
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
    }

}
