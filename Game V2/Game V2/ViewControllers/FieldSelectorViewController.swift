//
//  FieldSelectorViewController.swift
//  Game V2
//
//  Created by Mathias Larsen on 22/08/2021.
//

import UIKit

class FieldSelectorViewController: UIViewController {
    var fieldsSelected = 2
    var player1Gender = "male"
    var player2Gender = "female"
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var egoView: UIView!
    
    @IBOutlet weak var egoFieldTypeName: UILabel!
    
    @IBOutlet weak var egoDecription: UILabel!
    
    @IBOutlet weak var egoRequired: UILabel!
    
    @IBOutlet weak var rewardView: UIView!
    
    @IBOutlet weak var rewardFieldTypeName: UILabel!
    
    @IBOutlet weak var rewardDecription: UILabel!
    
    @IBOutlet weak var rewardRequired: UILabel!
    
    @IBOutlet weak var funFactsView: UIView!
    
    @IBOutlet weak var funFactsFieldTypeName: UILabel!
    
    @IBOutlet weak var funFactsActivateLabel: UILabel!
    
    @IBOutlet weak var funFactsActivateSwitch: UISwitch!
    
    @IBOutlet weak var funFactsDecription: UILabel!
    
    @IBOutlet weak var teaseView: UIView!
    
    @IBOutlet weak var teaseFieldTypeName: UILabel!
    
    @IBOutlet weak var teaseActivateLabel: UILabel!
    
    @IBOutlet weak var teaseActivateSwitch: UISwitch!
    
    @IBOutlet weak var teaseDecription: UILabel!
    
    @IBOutlet weak var dareView: UIView!
    
    @IBOutlet weak var dareFieldTypeName: UILabel!
    
    @IBOutlet weak var dareActivateLabel: UILabel!
    @IBOutlet weak var dareActivateSwitch: UISwitch!
    
    @IBOutlet weak var dareDecription: UILabel!
    
    @IBOutlet weak var dareTypeDecription: UILabel!
    
    @IBOutlet weak var dareToyLabel: UILabel!
    
    @IBOutlet weak var dareToySwitch: UISwitch!
    
    @IBOutlet weak var dareGeneralLable: UILabel!
    
    @IBOutlet weak var dareGeneralSwitch: UISwitch!
    
    @IBOutlet weak var darePlacesLabel: UILabel!
    
    @IBOutlet weak var darePlacesSwitch: UISwitch!
    
    @IBOutlet weak var truthView: UIView!
    
    @IBOutlet weak var truthFieldTypeName: UILabel!
    
    @IBOutlet weak var truthActivateLabel: UILabel!
    
    @IBOutlet weak var truthActivateSwitch: UISwitch!
    
    @IBOutlet weak var truthDecription: UILabel!
    
    @IBOutlet weak var truthTypeDecription: UILabel!
    
    @IBOutlet weak var truthErotic: UILabel!
    
    @IBOutlet weak var truthEroticSwitch: UISwitch!
    
    @IBOutlet var mainView: UIView!
    
    
    @IBOutlet weak var truthWhoAmAreYou: UILabel!
    
    @IBOutlet weak var truthWhoAreYouSwitch: UISwitch!
    
    
    @IBOutlet weak var truthWhatAboutUs: UILabel!
    
    @IBOutlet weak var truthWhatAboutUsSwitch: UISwitch!
    
    
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func NextButton(_ sender: Any) {
        //dare check that sub category is set
        if dareActivateSwitch.isOn && !dareGeneralSwitch.isOn && !darePlacesSwitch.isOn && !dareToySwitch.isOn {
            print("alert")
            let alert = UIAlertController(title: "Hovsa", message: "Du glemte at v??lge en underkategori til spilfeltet dare", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Luk", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if(truthActivateSwitch.isOn && !truthEroticSwitch.isOn  && !truthWhatAboutUsSwitch.isOn && !truthWhoAreYouSwitch.isOn){
            let alert = UIAlertController(title: "Hovsa", message: "Du glemte at v??lge en underkategori til spilfeltet truth", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Luk", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if (fieldsSelected < 6 || fieldsSelected > 6 ){
            let alert = UIAlertController(title: "Hovsa", message: "Der skal v??lges 6 spilfelttypper. du har valgt: " + String(fieldsSelected), preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Luk", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else{
            
            performSegue(withIdentifier: "Game", sender: self)
        }
        
        
    }
    
    @IBAction func ActivateField(_ sender: UISwitch) {
        if sender.isOn {
            fieldsSelected += 1
            countLabel.text = "V??lg felter nedenfor: " + String(fieldsSelected) + "/6"
            sender.superview?.layer.borderWidth = 2
            sender.superview?.layer.borderColor = UIColor.black.cgColor
            
        }else{
            fieldsSelected -= 1
            countLabel.text = "V??lg felter nedenfor: " + String(fieldsSelected) + "/6"
            sender.superview?.layer.borderWidth = 0
        }
    }
    
    @IBAction func ActivateFieldWithOptions(_ sender: UISwitch) {
        if sender.isOn {
            fieldsSelected += 1
            countLabel.text = "V??lg felter nedenfor: " + String(fieldsSelected) + "/6"
            sender.superview?.layer.borderWidth = 2
            sender.superview?.layer.borderColor = UIColor.black.cgColor
            
            let alert = UIAlertController(title: "Husk", message: "Du har valgt et spilfelt som har underkategorier. V??lg hvad i har lyst til at spille med. Dog mindst en.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Luk", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            fieldsSelected -= 1
            countLabel.text = "V??lg felter nedenfor: " + String(fieldsSelected) + "/6"
            sender.superview?.layer.borderWidth = 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countLabel.text = "V??lg felter nedenfor: " + String(fieldsSelected) + "/6"
        
        //set ego texts
        egoFieldTypeName.text = "Ego"
        egoDecription.text = "Har du nok point til at blive fork??let af din partner? Du har mulighed for at aktivere dette felt, hvis du har gjort dig umage igennem spillet."
        egoRequired.text = "Dette felt er altid aktiveret"
        
        //set reward texts
        rewardFieldTypeName.text = "F??lledes bel??nninger"
        rewardDecription.text = "Klar til festfyrv??rkeri og stjerner for ??jnene? Gennem en f??lles indsats, f??r I mulighed for at unlocke disse Pleasure-felter. Hvis I har point nok til sammen, f??r I endelig mulighed for at opn?? f??lles nydelse. Ingen m?? g?? utilfredse fra dette felt ;-)"
        rewardRequired.text = "Dette felt er altid aktiveret"
        
        //set fun facts texts and switches
        funFactsFieldTypeName.text = "Fun facts"
        funFactsDecription.text = "Hvor meget ved I egentlig om, hvad der er normalt og unormalt? Ofte g??r vi rundt og forestiller os en masse ting om, hvordan verden udenfor er skruet sammen. Her f??r I sjove facts, der s??tter det hele i perspektiv gennem sjove sp??rgsm??l, som giver anledning til at tale sammen p?? en ny m??de."
        funFactsActivateLabel.text = "Aktiver spilfeltet"
        funFactsActivateSwitch.isOn = false
        
        //set tease texts and switches
        teaseFieldTypeName.text = "Tease"
        teaseDecription.text = "Hvad er bedre end et forspil, der efterlader ??n hungrende efter mere? Vi kan ikke komme i tanke om noget. Giv jer tid til at pirre, hylde og nyde hinanden med forskellige former for teasing."
        teaseActivateLabel.text = "Aktiver spilfeltet"
        teaseActivateSwitch.isOn = false
        
        //set dare texts and switches
        dareFieldTypeName.text = "Dare"
        dareDecription.text = "Er I gode til at pr??ve nye ting sammen? Kom t??ttere p?? hinanden ved at teste jeres gr??nser og komme p?? nye intime eventyr. Hj??lp hinanden, n??r det er sv??rt at springe ud i - og husk, at det skal v??re sjovt."
        dareActivateLabel.text = "Aktiver spilfeltet"
        dareActivateSwitch.isOn = false
        dareTypeDecription.text = "V??lg hvilken typper dares i vil spille med:"
        dareToyLabel.text = "Sexleget??j"
        dareToySwitch.isOn = false
        dareGeneralLable.text = "Generelle"
        dareGeneralSwitch.isOn = false
        darePlacesLabel.text = "Steder i hjemmet"
        darePlacesSwitch.isOn = false
        
        // set truth texts and switches'
        truthFieldTypeName.text = "Sandhed"
        truthDecription.text = "Hvor godt kender I hinanden? Nu f??r I mulighed for at sp??rge hinanden om de ting, I ellers aldrig rigtigt f??r talt om. Hvem er I egentlig, og hvad dr??mmer og fantaserer I hver is??r om? Svar s?? ??rligt som muligt, og husk at jo bedre samtaler - jo flere point."
        truthActivateLabel.text = "Aktiver spilfeltet"
        truthActivateSwitch.isOn = false
        truthTypeDecription.text = "V??lg hvilken typper sandhed i vil spille med:"
        truthErotic.text = "Erotik"
        truthEroticSwitch.isOn = false
        truthWhoAmAreYou.text = "Hvem er du?"
        truthWhoAreYouSwitch.isOn = false
        truthWhatAboutUs.text = "Hvad med os?"
        truthWhatAboutUsSwitch.isOn = false
        
        //setup nextButton
        nextButton.setTitle("N??ste", for: .normal)
        
        
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextViewController = segue.destination as? GameViewController {
            nextViewController.player1Gender = player1Gender
            nextViewController.player2Gender = player2Gender
            nextViewController.erotic = truthEroticSwitch.isOn
            nextViewController.whoAreYou = truthWhoAreYouSwitch.isOn
            nextViewController.whatAboutUs = truthWhatAboutUsSwitch.isOn
        }
        
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
