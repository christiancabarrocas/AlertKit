//
//  AlertTypes.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 10/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

protocol Alertable {
    var data:AlertData {get}
}

struct AlertData {
    let title:String!
    let message:String!
    let actions:[Actionable]!
}

struct Timeout:Alertable {
    let data = AlertData(title: "Connection timed out", message: nil, actions: [ActionOK()])
}

struct NetworkError:Alertable {
    let data = AlertData(title: "No internet connection.", message: nil, actions: [ActionOK()])
}

struct CredentialsConfirmation:Alertable {
    let data = AlertData(title: "Is this correct?", message: "Please check the below information", actions: [ActionCredentialsOK(),ActionCancel()])
}

