//
//  SecondViewController.swift
//  Accessability
//
//  Created by Tong Yi on 5/7/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let openClassInstance = OpenClass()
    let publicClassInstance = PublicClass()
    let internalClassInstance = InternalClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - filePrivate must in the same file not same project
        
        // MARK: - open Class -> different file -> same project
        openClassInstance.filePrivateFuncFromOpenClass()
        openClassInstance.internalFuncFromOpenClass()
        openClassInstance.openFuncFromOpenClass()
        openClassInstance.publicFuncFromOpenClass()
        
        // MARK: - public Class -> different file -> same project
        publicClassInstance.filePrivateFuncFromPublicClass()
        publicClassInstance.internalFuncFromPublicClass()
        publicClassInstance.openFuncFromPublicClass()
        publicClassInstance.publicFuncFromPublicClass()
        
        // MARK: - internal Class -> different file -> same project
        internalClassInstance.internalFuncFromInternalClass()
        internalClassInstance.openFuncFromInternalClass()
        internalClassInstance.publicFuncFromInternalClass()
         
    }
    
    

}


