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
    func actionLog (string:String) {
        print ("log")
    }
}