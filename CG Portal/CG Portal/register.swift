//
//  register.swift
//  CG Portal
//
//  Created by Abijith Nair on 06/11/22.
//

import Foundation
import UIKit

class Register : UIViewController, UITextFieldDelegate{

    
    @IBOutlet weak var pass1: UITextField!
    @IBOutlet weak var pass2 : UITextField!
    @IBOutlet weak var email1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.email1.delegate = self
        self.pass1.delegate = self
        self.pass2.delegate = self
        pass1.isSecureTextEntry=true
        pass2.isSecureTextEntry=true
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
