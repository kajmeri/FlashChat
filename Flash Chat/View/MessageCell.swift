//
//  MessageCell.swift
//  Flash Chat
//
//  Created by Krishna Ajmeri on 1/24/20.
//  Copyright © 2020 Krishna Ajmeri. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

	@IBOutlet weak var messageBubble: UIView!
	@IBOutlet weak var rightImageView: UIImageView!
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var leftImageView: UIImageView!
	
	override func awakeFromNib() {
        super.awakeFromNib()
		
		messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
