//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Dominik Huffield on 4/20/21.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet var picture: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        var interfaceOrientation: UIInterfaceOrientation
        
//        class UITraitCollection : NSObject {
//            init(horizontalSizeClass: UIUserInterfaceSizeClass) {
//
//            }
//            init(verticalSizeClass: UIUserInterfaceSizeClass) {
//
//            }
        
//        func withHorizontallyFlippedOrientation() -> UIImage {
//
//        }


    }
    @IBOutlet var pic: UIImage!
    func withConfiguration(_ configuration: UIImage.Configuration) -> UIImage {
        pic.imageOrientation
        return pic
    }
    
    func rotateImage(image: UIImage)->UIImage
     {
         var rotatedImage = UIImage();
         switch image.imageOrientation
         {
         case UIImageOrientation.right:
            rotatedImage = UIImage(cgImage: image.cgImage!, scale: 1, orientation: UIImage.Orientation.down);

            case UIImageOrientation.down:
                rotatedImage = UIImage(cgImage: image.cgImage!, scale: 1, orientation: UIImage.Orientation.left);

             case UIImageOrientation.left:
                rotatedImage = UIImage(cgImage: image.cgImage!, scale: 1, orientation: UIImage.Orientation.up);

              default:
                rotatedImage = UIImage(cgImage: image.cgImage!, scale: 1, orientation: UIImage.Orientation.right);
         }
         return rotatedImage;
     }
}

