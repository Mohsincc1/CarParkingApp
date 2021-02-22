//
//  SignupViewController.swift
//  project5
//
//  Created by Syed Mohsin Hassan on 03/02/2021.
//

import UIKit
import FirebaseAuth

class SignupViewController: UIViewController {

    @IBOutlet weak var emailtextfield: UITextField!
    @IBOutlet weak var passwordtxtfield: UITextField!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //#UiView
        view1.layer.cornerRadius = 50
        view1.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
                view2.layer.borderWidth = 0.5
                view2.layer.borderColor = UIColor.white.cgColor
                view2.layer.shadowRadius = 5
                view2.layer.shadowColor = UIColor.red.cgColor
                view2.layer.cornerRadius = 30
                view.addSubview(view2)
                
    }
    
    func validateField() -> String {

        if  emailtextfield.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return "Enter E-mail And Password "
        }

        }
        else {

        }
        return nil
    }

    @IBAction func signUpButton(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailtextfield.text!, password: passwordtxtfield.text!) { (data, error) in
            
    }
    

}
}
