//
//  HighScoresViewController.swift
//  BullsEye
//
//  Created by Amr Hesham on 26/12/2020.
//  Copyright © 2020 Amr Hesham. All rights reserved.
//

import UIKit

// MARK: - HighScoresViewController
//
class HighScoresViewController: UITableViewController {
    
    // MARK: - Outlets
    
    // MARK: - Properties
    let names = ["The reader of the book", "Manda", "Joey", "Adam", "Eli"]
    let scores = ["50000", "10000","5000", "1000", "500"]
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

// MARK: - UITableView DataSource
//
extension HighScoresViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HighScoreCell", for: indexPath) as! HighScoreTableViewCell
        configureCell(cell, indexPath: indexPath)
        return cell
    }
}

// MARK: - UITableView Delegate
//
extension HighScoresViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


// MARK: - Configure
//
extension HighScoresViewController {
    func configureCell(_ cell: HighScoreTableViewCell, indexPath: IndexPath) {
        cell.nameLabel.text = names[indexPath.row]
        cell.scoreLabel.text = scores[indexPath.row]
    }
}
