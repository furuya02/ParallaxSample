//
//  TableViewCell.swift
//  ParallaxSample
//
//  Created by hirauchi.shinichi on 2016/12/12.
//  Copyright © 2016年 SAPPOROWORKS. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
