//
//  Alert.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 08/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlert (type:Alertable) {
        let alert = UIAlertController(title: type.data.title, message: type.data.message, preferredStyle:.Alert)
        self.presentViewController(alert, animated: true, completion: nil)
    }
}