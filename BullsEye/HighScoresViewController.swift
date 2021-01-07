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
    var items: [HighScoreItem]?
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        reloadItems()
        // Do any additional setup after loading the view.
    }

}

// MARK: - UITableView DataSource
//
extension HighScoresViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
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
        cell.nameLabel.text = items?[indexPath.row].name
        cell.scoreLabel.text = String(items?[indexPath.row].score ?? 0)
    }
}

// MARK: - Helpers
extension HighScoresViewController {
    func reloadItems() {
        items = [
            HighScoreItem(name: "Amr", score: 100),
            HighScoreItem(name: "Ahmed", score: 200),
            HighScoreItem(name: "Hassan", score: 300)
        ]
    }
}
