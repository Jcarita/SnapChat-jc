//
//  ViewController.swift
//  Snapchat
//
//  Created by Joseph Antonio on 5/26/21.
//  Copyright © 2021 Joseph Antonio. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func IniciarSesion(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password:  passwordTextField.text!){ (user, error) in
            print("Ententando Iniciar Sesion")
            if error != nil {
                print("Se presento el siguiente error: \(error) ")
            }else {
                print("Inicio de sesion exitoso")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

