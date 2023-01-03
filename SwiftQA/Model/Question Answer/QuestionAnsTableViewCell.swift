//
//  QuestionAnsTableViewCell.swift
//  SwiftQA
//
//  Created by mac on 28/11/22.
//

import UIKit

class QuestionAnsTableViewCell: UITableViewCell {
    
    static var cell = "QuestionAnsTableViewCell"

    @IBOutlet weak var btnNumber: UIButton!
    @IBOutlet weak var lblAns: UILabel!
    @IBOutlet weak var lblQuestion: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
