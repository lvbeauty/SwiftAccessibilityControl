//
//  ViewController.swift
//  Accessability
//
//  Created by Tong Yi on 5/7/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - change behavior
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }

    func setup()
    {
        let button = UIButton(frame: CGRect(x: 10, y: 30, width: 100, height: 200))
        view.addSubview(button)
    }
    
    // same file
    let openClassInstance = OpenClass()
    let publicClassInstance = PublicClass()
    let internalClassInstance = InternalClass()
    
    func test()
    {
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
        internalClassInstance.filePrivateFuncFromInternalClass()
        internalClassInstance.internalFuncFromInternalClass()
        internalClassInstance.openFuncFromInternalClass()
        internalClassInstance.publicFuncFromInternalClass()
    }
    

}

//MARK: - open vs public vs internal vs private vs filePrivate

open class OpenClass
{
    public func publicFuncFromOpenClass() {}
    open func openFuncFromOpenClass() {}
    func internalFuncFromOpenClass() {}
    private func privateFuncFromOpenClass() {}
    fileprivate func filePrivateFuncFromOpenClass() {}
    
    func aaa()
    {
        publicFuncFromOpenClass()
        openFuncFromOpenClass()
        internalFuncFromOpenClass()
        privateFuncFromOpenClass()
        filePrivateFuncFromOpenClass()
    }
}

public class PublicClass
{
    public func publicFuncFromPublicClass() {}
    open func openFuncFromPublicClass() {}
    func internalFuncFromPublicClass() {}
    private func privateFuncFromPublicClass() {}
    fileprivate func filePrivateFuncFromPublicClass() {}
    
    func aaa()
    {
        publicFuncFromPublicClass()
        openFuncFromPublicClass()
        internalFuncFromPublicClass()
        privateFuncFromPublicClass()
        filePrivateFuncFromPublicClass()
    }
}

class InternalClass
{
    public func publicFuncFromInternalClass() {}
    open func openFuncFromInternalClass() {}
    func internalFuncFromInternalClass() {}
    private func privateFuncFromInternalClass() {}
    fileprivate func filePrivateFuncFromInternalClass() {}
    
    func aaa()
    {
        publicFuncFromInternalClass()
        openFuncFromInternalClass()
        internalFuncFromInternalClass()
        privateFuncFromInternalClass()
        filePrivateFuncFromInternalClass()
    }
}



