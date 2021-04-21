//
//  UpperVC.swift
//  PickerViewDemo
//
//  Created by Dominik Huffield on 4/21/21.
//

import UIKit

class UpperVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
//    }
//
    override open var shouldAutorotate: Bool {
        return true
    }
//
//    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        return .landscapeLeft
//    }
//
//    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
//        return .landscapeLeft
//    }
    
}

//extension UIAppearanceContainer {
//
//    override public var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        return topViewController?.supportedInterfaceOrientations ?? .allButUpsideDown
//    }

//}
