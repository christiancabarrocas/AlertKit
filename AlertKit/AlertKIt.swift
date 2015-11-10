//
//  Alert.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 08/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

struct AlertKit {
    
    var show:Alertable
    var from:UIViewController

    func show () {
        let alert = UIAlertController(title: show.alertData().title, message: show.alertData().message, preferredStyle:.Alert)
        from.presentViewController(alert, animated: true, completion: nil)
    }
    
//    func show (type:Alertable,controller:UIViewController) {
//        let alert = UIAlertController(title: type.alertData().title, message: type.alertData().message, preferredStyle:.Alert)
//        controller.presentViewController(alert, animated: true, completion: nil)
//    }
}
