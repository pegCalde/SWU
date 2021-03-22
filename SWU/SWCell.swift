//
//  SWCell.swift
//  SWU
//
//  Created by Peggy Calderon on 22/03/2021.
//

import UIKit

class SWCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var epNumber: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var imgMovie: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
