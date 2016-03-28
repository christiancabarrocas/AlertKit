//
//  Alert.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 08/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

extension UIViewController {

    func show() -> UIViewController {
        return self
    }
    
    func alert(alertType: AlertData) {
        let alert = UIAlertController(title: alertType.title, message: alertType.message, preferredStyle:.Alert)
        for item in alertType.actions {
            alert.addAction(item.button)
        }
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func actionSheet(alertType: AlertData) {
        let alert = UIAlertController(title: alertType.title, message: alertType.message, preferredStyle:.ActionSheet)
        for item in alertType.actions {
            alert.addAction(item.button)
        }
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

struct AlertData {
    var title:String!
    var message:String!
    var actions:[ButtonActionable]!
    
    init (title: String, message: String, actions: [ButtonActionable]) {
        self.title = title
        self.message = message
        self.actions = actions
    }
}