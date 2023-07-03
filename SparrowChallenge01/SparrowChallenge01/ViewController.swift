//
//  ViewController.swift
//  SparrowChallenge01
//
//  Created by Igor Shvetsov on 03.07.2023.
//

import UIKit

private extension CGFloat {
    static let squareSideLength = CGFloat(100.0)
    static let cornerRadius = CGFloat(10.0)
}

private extension CGRect {
    static let squareViewFrame = CGRect(
        origin: .zero,
        size: CGSize(
            width: .squareSideLength,
            height: .squareSideLength
        )
    )
}

class ViewController: UIViewController {
    
    private lazy var squareView = GradientView(frame: .squareViewFrame)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private
    
    private func setupUI() {
        view.addSubview(squareView)
        layoutSquareView()
        colorSquareView()
        decorateSquareView()
    }
    
    private func layoutSquareView() {
        squareView.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            squareView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.widthAnchor.constraint(equalToConstant: .squareSideLength),
            squareView.widthAnchor.constraint(equalTo: squareView.heightAnchor)
        ]
        
        constraints.forEach { $0.isActive = true }
    }
    
    private func colorSquareView() {
        squareView.gradientColors = [.blue, .red]
    }
    
    private func decorateSquareView() {
        squareView.layer.cornerRadius = .cornerRadius
        squareView.layer.dropShadow(Shadow(cornerRadius: .cornerRadius))
    }

}
