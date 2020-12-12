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
    var targetValue = 0
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        // Do any additional setup after loading the view.
    }


}

// MARK: - IBActions
//
extension ViewController {
    
    // MARK: - Show Alert Action
    @IBAction func showAlert() {
        let message = "The slider value is: \(sliderCurrentValue)" +
                        "\n the target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    // MARK: - Slider Moved Action
    
    @IBAction func sliderMoved(_ slider:UISlider) {
        sliderCurrentValue = lroundf(slider.value)
    }
}

// MARK: - Handlers
//
extension ViewController {
    func startNewRound() {
        sliderCurrentValue = lroundf(slider.value)
        let minValue = lroundf(slider.minimumValue)
        let maxValue = lroundf(slider.maximumValue)
        targetValue = Int.random(in: minValue...maxValue)
    }

}
