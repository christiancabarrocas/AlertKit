//
//  ActionTypes.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 10/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

protocol ButtonActionable {
    var action : UIAlertAction {get}
}

struct ActionOK:ButtonActionable {
    let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
}

struct ActionCancel:ButtonActionable {
    let action = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
}

struct ActionCredentialsOK:ButtonActionable {
    let action = UIAlertAction(title: "Yes", style: .Default) { (action) -> Void in
        
    }
}

struct ActionTest:ButtonActionable {
    let action = UIAlertAction(title: "Testing actions", style: .Default) {Void -> Void in
        
    }
}