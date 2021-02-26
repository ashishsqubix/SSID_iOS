//
//  AppUserDefaults.swift
//  SSIDApp
//
//  Created by Admin on 26/02/21.
//

import UIKit

enum Languages:Int {
    case english = 0
    case korean
    case japanese
    case russian
}

class AppUserDefaults: UserDefaults {

    class Keys {
        static let kSelectedLanguage = "SelectedLanguage"
    }
    
    var selectedLanguage:Languages {
        set {
            AppUserDefaults.standard.setValue(newValue.rawValue, forKey: Keys.kSelectedLanguage)
        }
        get {
            let value = AppUserDefaults.standard.integer(forKey: Keys.kSelectedLanguage)
            return Languages(rawValue: value) ?? .english
        }
    }
    
}
