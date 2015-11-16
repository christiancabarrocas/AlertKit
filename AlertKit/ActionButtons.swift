//
//  ActionTypes.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 10/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

protocol ButtonActionable {
    var button : UIAlertAction {get}
}

extension ButtonActionable {
    func actionCredentialsConfirmed() {
        print ("Credentials confirmed")
    }
}

struct ActionOK:ButtonActionable {
    let button = UIAlertAction(title: "Ok", style: .Default, handler: nil)
}

struct ActionCancel:ButtonActionable {
    let button = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
}

struct ActionCredentialsOK:ButtonActionable {
    let button = UIAlertAction(title: "Yes", style: .Default) { (action) -> Void in
        actionCredentialsConfirmed()
    }
}