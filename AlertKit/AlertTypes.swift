//
//  AlertTypes.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 10/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

enum Type {
    case unknown
    case Timeout
    case NetworkError
    case CredentialsConfirmation
}

protocol Alertable {
    func alertData () -> AlertData
}

struct AlertData {
    let title:String!
    let message:String!
    let actions:[Actionable]!
}

struct TimeoutAlert:Alertable {
    func alertData() -> AlertData {
        return AlertData(title: "Connection timed out", message: nil, actions: [ActionOK()])
    }
}

struct NetworkErrorAlert:Alertable {
    func alertData() -> AlertData {
        return AlertData(title: "No internet connection.", message: nil, actions: [ActionOK()])
    }
}

struct CredentialsConfirmation:Alertable {
    func alertData() -> AlertData {
        return AlertData(title: "Is this correct?", message: "Please check the below information", actions: [ActionCancel()])
    }
}
