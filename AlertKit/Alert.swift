//
//  Alert.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 08/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit


enum Type {
    case Timeout
    case NetworkError
}

struct TimeoutAlert {
    let title = "The connection timed out."
    let message = ""
}

struct NetworkErrorAlert {
    let title = "No internet connection."
    let message = ""
}

struct Alert {
    let type:Type
    var title:String {
        get {
            switch type {
                case .Timeout : return TimeoutAlert().title
                case .NetworkError : return NetworkErrorAlert().title
            }
        }
    }
    
    var message:String {
        get {
            switch type {
            case .Timeout : return TimeoutAlert().message
            case .NetworkError : return NetworkErrorAlert().message
            }
        }
    }
}

struct AlertKit {
    func showType (type:Type) -> UIAlertController {
        let dataType = Alert(type: type)
        let alert = UIAlertController(title: dataType.title, message: dataType.message, preferredStyle:.Alert)
        return alert
    }
}
