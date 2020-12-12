//
//  ViewController.swift
//  BullsEye
//
//  Created by Amr Hesham on 12/12/20.
//  Copyright © 2020 Amr Hesham. All rights reserved.
//

import UIKit

//MARK: - ViewController
class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var slider: UISlider!
    
    // MARK: - Properties
    
    var sliderCurrentValue = 0
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderCurrentValue = lroundf(slider.value)
        // Do any additional setup after loading the view.
    }


}

// MARK: - IBActions
//
extension ViewController {
    
    // MARK: - Show Alert Action
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello World!", message: "The slider value is: \(sliderCurrentValue)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Slider Moved Action
    
    @IBAction func sliderMoved(_ slider:UISlider) {
        sliderCurrentValue = lroundf(slider.value)
    }
}
