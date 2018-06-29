//
//  ViewController.swift
//  Let Me In 2
//
//  Created by Jessica Janeth on 6/27/18.
//  Copyright © 2018 Jessica Janeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func didTapButton(_ sender: Any) {
        
        let deadline = DispatchTime.now() + .seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            print("LOGIN")
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextField.text)
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let mainAppVC = segue.destination as? MainAppVC, let username = sender as? String {
            mainAppVC.username = username
            
        }
        
        
        
    }
    
    
    
    
    

}
