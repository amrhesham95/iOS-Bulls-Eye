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
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    // MARK: - Properties
    
    var sliderCurrentValue = 0
    var targetValue = 0
    var totalScore = 0
    var roundCounter = 0
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newGameButtonAction()
        // Do any additional setup after loading the view.
    }


}

// MARK: - IBActions
//
extension ViewController {
    
    // MARK: - Show Alert Action
    @IBAction func showAlertThenStartNewRound() {
        let title: String
        
        let (points, difference) = getPointsAndDiffernce()
        updateTotalScore(points: points)
        
        switch difference {
        case 0:
            title = "Perfect!"
        case ..<5:
            title = "You almost had it!"
        case ..<0:
            title = "Pretty good"
        default:
            title = "Not even close"
        }
        
        let message = "You scored \(points) points."
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK!", style: .default) { [unowned self] _ in self.startNewRound()}
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    // MARK: - Slider Moved Action
    
    @IBAction func sliderMoved(_ slider:UISlider) {
        sliderCurrentValue = lroundf(slider.value)
    }
    
    // MARK: - New Game Action
    @IBAction func newGameButtonAction() {
        totalScore = 0
        roundCounter = 0
        startNewRound()
    }
}

// MARK: - Handlers
//
extension ViewController {
    
    // MARK: - startNewRound
    func startNewRound() {
        roundCounter += 1
        sliderCurrentValue = lroundf(slider.value)
        let minValue = lroundf(slider.minimumValue)
        let maxValue = lroundf(slider.maximumValue)
        targetValue = Int.random(in: minValue...maxValue)
        configureView()
    }
    
    // MARK: - getPoints
    func getPointsAndDiffernce() -> (Int, Int) {
        let difference = abs(targetValue - sliderCurrentValue)
        let points = 100 - difference
        return (points, difference)

    }
    
    // MARK: - update score
    func updateTotalScore(points: Int) {
        totalScore += points
    }

}

// MARK: - View Configurations
//
extension ViewController {
    func configureView() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(totalScore)
        roundLabel.text = String(roundCounter)
    }
}
