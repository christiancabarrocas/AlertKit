//
//  TestController.swift
//  AlertKit
//
//  Created by Christian Cabarrocas on 10/11/15.
//  Copyright © 2015 Wasabilabs. All rights reserved.
//

import UIKit

//WISH FORMAT: self.show.alert("title", message: "message", actions:[])
class TestController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.show().actionSheet(AlertData(title: "title", message: "message", actions: []))
    }
}
