//
//  SquatViewController.swift
//  CuteLittleFat
//
//  Created by 陈文琦 on 15/1/10.
//  Copyright (c) 2015年 xzl. All rights reserved.
//

import UIKit
import CoreMotion

class SquatViewController: UIViewController {

    @IBOutlet weak var numLabel:UILabel!
    
    let motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if !motionManager.deviceMotionAvailable {
            NSLog("没有加速计")
        } else {
            NSLog("有加速计")
        }
        
        var isStart = false;
        var isOver = false;
        //var beginTimestamp:Int = 0;
        
        motionManager.deviceMotionUpdateInterval = 0.1; // 告诉manager，更新频率是10Hz
        motionManager.startDeviceMotionUpdatesToQueue(NSOperationQueue.mainQueue()) {
            [weak self] (data: CMDeviceMotion!, error: NSError!) in
                //self!.numLabel.text = "\(data.gravity.z)"
            
            //if data.gravity.z < -0.8 {
//                if data.userAcceleration.x < -1.5 {
//                    var num:Int! = self!.numLabel.text?.toInt()
//                    num = num + 1
//                    self!.numLabel.text = "\(num)"
//                }
            //}
            
            if !isStart && data.userAcceleration.x < -1.0 {
                isStart = true
            }
            
            if isStart && data.userAcceleration.x > -0.5 {
                isStart = false
                var num:Int! = self!.numLabel.text?.toInt()
                num = num + 1
                self!.numLabel.text = "\(num)"
            }
        }
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        motionManager.stopDeviceMotionUpdates()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
