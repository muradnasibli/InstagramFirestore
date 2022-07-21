//
//  CustomTextField.swift
//  InstagramFirestore
//
//  Created by Murad Nasibli on 21.07.22.
//

import UIKit

class CustomTextField: UITextField{
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        keyboardType = .emailAddress
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        setHeight(50)
        attributedPlaceholder = NSAttributedString(string: placeholder,
                                                      attributes: [.foregroundColor: UIColor(white: 1,
                                                                                             alpha: 0.7)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
