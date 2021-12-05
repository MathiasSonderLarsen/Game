//
//  ViewController.swift
//  Game V2
//
//  Created by Mathias Larsen on 18/08/2021.
//

import UIKit

class PlayersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ContinueButton(_ sender: Any) {
        performSegue(withIdentifier: "Field", sender: nil)
    }
    
}

