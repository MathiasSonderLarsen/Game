//
//  ThreeOptionsTableViewCell.swift
//  Game V2
//
//  Created by Mathias Larsen on 19/08/2021.
//

import UIKit

class ThreeOptionsTableViewCell: UITableViewCell {

    let type = UILabel()
    let decription = UILabel()
    let option1 = UILabel()
    let option2 = UILabel()
    let option3 = UILabel()
    let switch1 = UISwitch()
    let switch2 = UISwitch()
    let switch3 = UISwitch()
    var switch1State = false
    var switch2State = false
    var switch3State = false
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        type.translatesAutoresizingMaskIntoConstraints = false
        decription.translatesAutoresizingMaskIntoConstraints = false
        option1.translatesAutoresizingMaskIntoConstraints = false
        option2.translatesAutoresizingMaskIntoConstraints = false
        option3.translatesAutoresizingMaskIntoConstraints = false
        switch1.translatesAutoresizingMaskIntoConstraints = false
        switch2.translatesAutoresizingMaskIntoConstraints = false
        switch3.translatesAutoresizingMaskIntoConstraints = false
        
        decription.numberOfLines = 0
        decription.lineBreakMode = .byWordWrapping

        contentView.addSubview(type)
        contentView.addSubview(decription)
        contentView.addSubview(option1)
        contentView.addSubview(option2)
        contentView.addSubview(option3)
        contentView.addSubview(switch1)
        contentView.addSubview(switch2)
        contentView.addSubview(switch3)

        

        let viewsDict = [
            "type": type,
            "decription": decription,
            "option1": option1,
            "option2": option2,
            "option3": option3,
            "switch1": switch1,
            "switch2": switch2,
            "switch3": switch3,
                ]
        
        switch1.addTarget(self, action: #selector(Switch1ValueChanged(sender:)), for: UIControl.Event.valueChanged)
        switch2.addTarget(self, action: #selector(Switch2ValueChanged(sender:)), for: UIControl.Event.valueChanged)
        switch3.addTarget(self, action: #selector(Switch3ValueChanged(sender:)), for: UIControl.Event.valueChanged)

        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[type(20)]-[decription]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[decription]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[decription(300)]-|", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[decription]-[switch1]-[switch2]-[switch3]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[switch1]-[option1]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[switch2]-[option2]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[switch3]-[option3]", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[decription]-15-[option1]-15-[option2]-15-[option3]", options: [], metrics: nil, views: viewsDict))
        
    }

    @objc func Switch1ValueChanged(sender: UISwitch!)
        {
            if sender.isOn {
                if option2.text == "Sexlegetøj" {
                }
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
    
    @objc func Switch3ValueChanged(sender: UISwitch!)
        {
            if sender.isOn {

                switch3State = true
                print("switch on")

            } else {
                switch3State = false
            }
        }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
