//
//  AuthenticationViewModel.swift
//  InstagramFirestore
//
//  Created by Murad Nasibli on 21.07.22.
//

import UIKit

struct LoginViewModel{
    var email: String?
    var password: String?
    
    var formIsValid: Bool{
        return email?.isEmpty == false && password?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor{
        return formIsValid ? .systemPurple : .systemPurple.withAlphaComponent(0.5)
    }
    
    var buttonTitleColor: UIColor{
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
}

struct RegistrationViewModel{
    
}
