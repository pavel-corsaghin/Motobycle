//
//  GradienButton.swift
//  Motobycle
//
//  Created by HungNguyen on 2022/09/23.
//

import UIKit

@IBDesignable
final class GradienButton: UIButton {
    
    // MARK: - Properties

    @IBInspectable
    var cornerRadius: CGFloat = 4 {
        didSet {
            update()
        }
    }
    
    @IBInspectable
    var startColor: UIColor = .white {
        didSet {
            update()
        }
    }
    
    @IBInspectable
    var endColor: UIColor = .black {
        didSet {
            update()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        update()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        update()
    }
    
    private func update() {
        titleLabel?.textColor = .white
        applyGradient(with: [startColor, endColor], gradient: .topLeftBottomRight, cornerRadius: cornerRadius)
    }
    
}
