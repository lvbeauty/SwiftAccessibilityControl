//
//  ViewController.swift
//  Accessability2
//
//  Created by Tong Yi on 5/7/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

import UIKit
import Accessability

class ViewController: UIViewController {
    
    //MARK: - can not use Internal class outside module
    let openClassInstance = OpenClass()
    let publicClassInstance = PublicClass()
    let internalClassInstance = InternalClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

class subclassOfOpenClass: OpenClass
{
    override func openFuncFromOpenClass() {
        
    }
    override func publicFuncFromOpenClass() {
        
    }
}

class subclassOfPublicClass: PublicClass
{
    override func publicFuncFromPublicClass() {
        
    }
    
    override func openFuncFromPublicClass() {
        
    }
}
