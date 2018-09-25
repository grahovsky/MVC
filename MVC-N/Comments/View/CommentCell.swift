//
//  CommentCell.swift
//  MVC-N
//
//  Created by Konstantin on 25/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
