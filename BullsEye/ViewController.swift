//
//  ViewController.swift
//  BullsEye
//
//  Created by Amr Hesham on 12/12/20.
//  Copyright © 2020 Amr Hesham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// MARK: - IBActions
//
extension ViewController {
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello World!", message: "My First App", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
