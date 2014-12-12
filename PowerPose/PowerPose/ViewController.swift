//
//  ViewController.swift
//  PowerPose
//
//  Created by Chad Slater on 12/10/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    @IBOutlet var poseView: UIImageView!
    @IBOutlet var poseImage: UIImageView!
    @IBAction func takePose(sender: AnyObject) {
        
       let pick = UIImagePickerController()
        pick.delegate = self
        pick.allowsEditing = true;
        
        pick.sourceType = UIImagePickerControllerSourceType(rawValue: 1)!
        
        var imageView = UIImageView(frame: CGRectMake(100, 150, 150, 150));
        var image = UIImage(named: "powerpose.png");
        imageView.image = image;
        pick.cameraOverlayView = imageView
       
        self.presentViewController(pick,animated: true,nil)
        
        
    }
    @IBAction func getPose(sender: AnyObject) {

        let pick = UIImagePickerController()
        pick.delegate = self
        pick.allowsEditing = true;
        
         pick.sourceType = UIImagePickerControllerSourceType(rawValue: 0)!
        
         self.presentViewController(pick,animated: true,nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (!UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType(rawValue: 2)!)) {
            
            let myAlertView = UIAlertView()
            
            myAlertView.message = "Device has no camera"
            myAlertView.delegate = nil
            myAlertView.cancelButtonIndex = -1
            
        
             myAlertView.show()
            
            
        }
        
        var imageView = UIImageView(frame: CGRectMake(100, 150, 150, 150));
        var image = UIImage(named: "powerpose.png");
            imageView.image = image;
            self.view.addSubview(imageView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        let pose: AnyObject? = editingInfo[UIImagePickerControllerEditedImage]
        
        self.poseView.image = pose as? UIImage
        
        picker.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    


}

