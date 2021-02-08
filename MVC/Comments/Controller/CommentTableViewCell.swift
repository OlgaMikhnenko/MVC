//
//  CommentTableViewCell.swift
//  MVC
//
//  Created by Helga on 08.02.2021.
//

import UIKit

class CommentTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure (with comment : Comment){
        self.label.text = comment.name
        self.textView.text = comment.body
    }

}
