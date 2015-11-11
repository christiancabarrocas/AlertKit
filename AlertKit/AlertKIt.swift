//
//  Alert.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 08/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlert (alertType:Alertable) {
        let alert = UIAlertController(title: alertType.data.title, message: alertType.data.message, preferredStyle:.Alert)
        for item in alertType.data.actions {
            alert.addAction(item.action)
        }
        self.presentViewController(alert, animated: true, completion: nil)
    }
}