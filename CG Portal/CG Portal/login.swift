//
//  login.swift
//  CG Portal
//
//  Created by Abijith Nair on 06/11/22.
//

import Foundation
import UIKit

class Login: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.email.delegate = self
        self.pass.delegate = self
        pass.isSecureTextEntry=true
        return()

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        return()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return(true)
    }
}

