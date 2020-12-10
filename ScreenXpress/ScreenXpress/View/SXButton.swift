//
//  SXButton.swift
//  ScreenXpress
//
//  Created by Mondale on 12/9/20.
//

import UIKit

class SXButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    init(text: String){
        super.init(frame: .zero)
        setTitle(text, for: .normal)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        setTitleColor(.darkGray, for: .normal)
        layer.cornerRadius = 10
        layer.masksToBounds = true
        backgroundColor = UIColor(white: 1.0, alpha: 0.9)
        
    }
    
}
