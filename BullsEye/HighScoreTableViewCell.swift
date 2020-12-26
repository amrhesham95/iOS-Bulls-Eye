//
//  HighScoreTableViewCell.swift
//  BullsEye
//
//  Created by Amr Hesham on 26/12/2020.
//  Copyright © 2020 Amr Hesham. All rights reserved.
//

import UIKit

// MARK: - HighScoreTableViewCell
//
class HighScoreTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    // MARK: - Properties
    
    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
