//
//  SelectLanguageScreen.swift
//  SSIDApp
//
//  Created by Admin on 25/02/21.
//

import UIKit

class SelectLanguageScreen: UIViewController {

    @IBOutlet weak var btnRussian: CustomButton!
    @IBOutlet weak var btnEnglish: CustomButton!
    
    @IBOutlet weak var btnJapanese: CustomButton!
    @IBOutlet weak var btnKorean: CustomButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnEnglish.isSelected = true
        btnRussian.isSelected = false
        btnJapanese.isSelected = false
        btnKorean.isSelected = false

        // Do any additional setup after loading the view.
    }
    
    func selectLanguage(sender:CustomButton){
        btnEnglish.isSelected = false
        btnRussian.isSelected = false
        btnJapanese.isSelected = false
        btnKorean.isSelected = false
        sender.isSelected = true
    }
    
    @IBAction func actionChangeLanguage(_ sender: CustomButton) {
        selectLanguage(sender:sender)
    }
    

    @IBAction func actionNext(_ sender: CustomButton) {
        
    }
    

}
