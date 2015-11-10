//
//  AlertTypes.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 10/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

enum Type {
    case Timeout
    case NetworkError
    case CredentialsConfirmation
}

struct TimeoutAlert {
    let title = "The connection timed out."
    let action = ActionOK()
}

struct NetworkErrorAlert {
    let title = "No internet connection."
}

struct CredentialsConfirmation {
    let message = "Please check the below information"
}

