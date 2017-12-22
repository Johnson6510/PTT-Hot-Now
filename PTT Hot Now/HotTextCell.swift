//
//  HotTextCell.swift
//  PTT Hot Now
//
//  Created by 黃健偉 on 2017/12/16.
//  Copyright © 2017年 黃健偉. All rights reserved.
//  學習網站：
//  https://github.com/KnucklesHuang/DispBBS-Swift/tree/HotTextBrowser
//

import UIKit

class HotTextCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
