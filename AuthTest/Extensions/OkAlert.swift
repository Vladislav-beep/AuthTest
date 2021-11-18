//
//  OkAlert.swift
//  AuthTest
//
//  Created by Владислав Сизонов on 18.11.2021.
//

import UIKit

extension UIViewController {
    
    func showOkAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
