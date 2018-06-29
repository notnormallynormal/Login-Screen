//
//  MainAppVC.swift
//  Let Me In 2
//
//  Created by Jessica Janeth on 6/28/18.
//  Copyright © 2018 Jessica Janeth. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let unwrappedUsername = self.username else { return }
        greetingLabel.text = "Hello, \(unwrappedUsername)"
        
    }

}
