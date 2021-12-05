//
//  TwoOptionsTableViewCell.swift
//  Game V2
//
//  Created by Mathias Larsen on 19/08/2021.
//

import UIKit

class TwoOptionsTableViewCell: UITableViewCell {

    let type = UILabel()
    let decription = UILabel()
    let option1 = UILabel()
    let option2 = UILabel()
    let switch1 = UISwitch()
    let switch2 = UISwitch()
    var switch1State = false
    var switch2State = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        type.translatesAutoresizingMaskIntoConstraints = false
        decription.translatesAutoresizingMaskIntoConstraints = false
        option1.translatesAutoresizingMaskIntoConstraints = false
        option2.translatesAutoresizingMaskIntoConstraints = false
        switch1.translatesAutoresizingMaskIntoConstraints = false
        switch2.translatesAutoresizingMaskIntoConstraints = false
        
        decription.numberOfLines = 0
        decription.lineBreakMode = .byWordWrapping

        contentView.addSubview(type)
        contentView.addSubview(decription)
        contentView.addSubview(option1)
        contentView.addSubview(option2)
        contentView.addSubview(switch1)
        contentView.addSubview(switch2)

        

        let viewsDict = [
            "type": type,
            "decription": decription,
            "option1": option1,
            "option2": option2,
            "switch1": switch1,
            "switch2": switch2,
                ]

        
        switch1.addTarget(self, action: #selector(Switch1ValueChanged(sender:)), for: UIControl.Event.valueChanged)
        switch2.addTarget(self, action: #selector(Switch2ValueChanged(sender:)), for: UIControl.Event.valueChanged)

        

        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[type(20)]-[decription]-[switch1]-[switch2]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[decription]-[option1]-[option2]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[decription(300)]-|", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[switch1]-[option1]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[switch2]-[option2]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[option1]-15-[option2]", options: [], metrics: nil, views: viewsDict))
        
    }
    
    @objc func Switch1ValueChanged(sender: UISwitch!)
        {
            if sender.isOn {

                switch1State = true
                print("switch on")

            } else {
                switch1State = false
            }
        }

    @objc func Switch2ValueChanged(sender: UISwitch!)
        {
            if sender.isOn {

                switch2State = true
                print("switch on")

            } else {
                switch2State = false
            }
        }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
