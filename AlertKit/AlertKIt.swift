//
//  Alert.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 08/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

//struct DataCreator {
//    let type:Type
//    var title:String? {
//        get {
//            switch type {
//                case .Timeout : return TimeoutAlert().title
//                case .NetworkError : return NetworkErrorAlert().title
//                case .CredentialsConfirmation : return CredentialsConfirmation().title
//                default : return nil
//            }
//        }
//    }
//    
//    var message:String? {
//        get {
//            switch type {
//                case .CredentialsConfirmation : return CredentialsConfirmation().message
//                default : return nil
//            }
//        }
//    }
//    
//    var actions:[Actionable]? {
//        get {
//            switch type {
//                case .Timeout : return [TimeoutAlert().action]
//                case .NetworkError : return [NetworkErrorAlert().action];
//                default : return nil
//            }
//        }
//    }
//}

struct AlertKit {
//    func showType (type:Type) -> UIAlertController {
//        let data = DataCreator(type: type)
//        let alert = UIAlertController(title: data.title, message: data.message, preferredStyle:.Alert)
//        return alert
//    }
    func show (type:Alertable) -> UIAlertController {
        let alert = UIAlertController(title: type.alertData().title, message: type.alertData().message, preferredStyle:.Alert)
        return alert
    }
}
