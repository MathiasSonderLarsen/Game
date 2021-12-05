//
//  RequiredTableViewCell.swift
//  Game V2
//
//  Created by Mathias Larsen on 19/08/2021.
//

import UIKit

class RequiredTableViewCell: UITableViewCell {

    let type = UILabel()
    let decription = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        type.translatesAutoresizingMaskIntoConstraints = false
        decription.translatesAutoresizingMaskIntoConstraints = false
        
        decription.numberOfLines = 0
        decription.lineBreakMode = .byWordWrapping
        

        contentView.addSubview(type)
        contentView.addSubview(decription)

        

        let viewsDict = [
                    "type": type,
                    "decription": decription,
                ]
        

        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[type(20)]-[decription]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[decription(300)]-|", options: [], metrics: nil, views: viewsDict))
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func prepareForReuse() {
    
    }

}
