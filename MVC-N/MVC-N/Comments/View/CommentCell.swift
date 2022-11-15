//
//  CommentCell.swift
//  MVC-N
//
//  Created by Дмитрий Никольский on 14.11.2022.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.bodyLabel.text = comment.body
    }
}
