//
//  ActionTypes.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 10/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

enum Action {
    case Ok
    case Cancel
}

protocol Actionable {

}

struct ActionOK:Actionable {
    let action = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
}

struct ActionCancel:Actionable {
    let action = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil)
}

struct ActionCredentialsOK:Actionable {
    let action = UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default) { (action) -> Void in
        
    }
}