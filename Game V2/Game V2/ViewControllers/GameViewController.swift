//
//  GameViewController.swift
//  Game V2
//
//  Created by Mathias Larsen on 23/08/2021.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet var contentView: UIView!
    let cardHolder = CardHolder()
    let cardView = UIView()
    let cardType = UILabel()
    let cardDecription = UILabel()
    let DrawCardButton = UIButton()
    let removeCardButton = UIButton()
    var erotic = false
    var whoAreYou = false
    var whatAboutUs = false
    var player1Gender = "male"
    var player2Gender = "female"
    
    
    override var shouldAutorotate: Bool {
        return true
    }
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
       return .landscape
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        cardHolder.BuildDecks(erotic: erotic, whoAreYou: whoAreYou, whatAboutUs: whatAboutUs, player1Gender: player1Gender, player2Gender: player2Gender)
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }
    

    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewWillLayoutSubviews() {
        contentView.addSubview(DrawCardButton)
        DrawCardButton.translatesAutoresizingMaskIntoConstraints = false
        DrawCardButton.trailingAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        DrawCardButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        DrawCardButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        DrawCardButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        DrawCardButton.setTitle("Træk et kort", for: .normal)
        DrawCardButton.backgroundColor = .black
        DrawCardButton.addTarget(self, action: #selector(DrawCard), for: .touchUpInside)
      
        contentView.addSubview(removeCardButton)
        removeCardButton.translatesAutoresizingMaskIntoConstraints = false
        removeCardButton.leadingAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        removeCardButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        removeCardButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        removeCardButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        removeCardButton.backgroundColor = .black
        removeCardButton.setTitle("Fjern kort", for: .normal)
        removeCardButton.addTarget(self, action: #selector(RemoveCard), for: .touchUpInside)
        
    
        
    }
    
    @objc func RemoveCard(sender:UIButton!){
        cardView.removeFromSuperview()
    }
    
    @objc func DrawCard(sender: UIButton!) {
        let card = cardHolder.DrawCard(fieldType: "Truth", player: 1)
        
        contentView.addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        cardView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        cardView.widthAnchor.constraint(equalToConstant: 500).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        cardView.backgroundColor = UIColor(cgColor: CGColor(red: 0.77 , green: 0, blue: 0, alpha: 1))
        cardView.layer.borderColor = UIColor.black.cgColor
        cardView.layer.borderWidth = 5
        
        
        
        
        cardView.addSubview(cardType)
        cardType.translatesAutoresizingMaskIntoConstraints = false
        cardType.centerXAnchor.constraint(equalTo: cardView.centerXAnchor).isActive = true
        cardType.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10).isActive = true
        cardType.text = card.type
        cardType.textColor = .white
        cardType.font = cardType.font.withSize(30)
        
        
        cardView.addSubview(cardDecription)
        cardDecription.translatesAutoresizingMaskIntoConstraints = false
        cardDecription.centerXAnchor.constraint(equalTo: cardView.centerXAnchor).isActive = true
        cardDecription.centerYAnchor.constraint(equalTo: cardView.centerYAnchor).isActive = true
        cardDecription.widthAnchor.constraint(equalTo: cardView.widthAnchor, constant: -30).isActive = true
        cardDecription.text = card.decription
        cardDecription.numberOfLines = 0
        cardDecription.textColor = .white
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
