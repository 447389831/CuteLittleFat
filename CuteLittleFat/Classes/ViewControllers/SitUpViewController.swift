//
//  SitUpViewController.swift
//  CuteLittleFat
//
//  Created by 陈文琦 on 15/1/10.
//  Copyright (c) 2015年 xzl. All rights reserved.
//

import UIKit
import CoreMotion

class SitUpViewController: UIViewController {

    @IBOutlet weak var numLabel:UILabel!
    
    let motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !motionManager.deviceMotionAvailable {
            NSLog("没有加速计")
        } else {
            NSLog("有加速计")
        }
        
        motionManager.deviceMotionUpdateInterval = 0.1; // 告诉manager，更新频率是10Hz
        //motionManager.startDeviceMotionUpdatesToQueue(<#queue: NSOperationQueue!#>, withHandler: <#CMDeviceMotionHandler!##(CMDeviceMotion!, NSError!) -> Void#>)
        
//        func magnitudeFromAttitude(attitude: CMAttitude) -> Double {
//            return sqrt(pow(attitude.roll, 2) + pow(attitude.yaw, 2) + pow(attitude.pitch, 2))}// initial configurationvar
        
        //motionManager.startDeviceMotionUpdates()
        
        //var initialAttitude:CMAttitude = motionManager.deviceMotion.attitude
//        var showingPrompt = false// trigger values - a gap so there isn't a flicker zone
//        let showPromptTrigger = 1.0
//        let showAnswerTrigger = 0.8
        
        
//        motionManager.deviceMotionUpdateInterval = 0.1; // 告诉manager，更新频率是10Hz
//        motionManager.startDeviceMotionUpdatesToQueue(NSOperationQueue.mainQueue()) {
//            [weak self] (data: CMDeviceMotion!, error: NSError!) in
//
//            // translate the attitude
//            //data.attitude.multiplyByInverseOfAttitude(initialAttitude)
//            // calculate magnitude of the change from our initial attitude
//            let magnitude = magnitudeFromAttitude(data.attitude) ?? 0
//            // show the prompt
//            if !showingPrompt && magnitude > showPromptTrigger {
//                showingPrompt = true
//                var num:Int! = self!.numLabel.text?.toInt()
//                num = num + 1
//                self!.numLabel.text = "\(num)"
//            }
//            // hide the prompt
//            if showingPrompt && magnitude < showAnswerTrigger {
//                showingPrompt = false
//            }
//        }
    }

    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        //motionManager.stopDeviceMotionUpdates()
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
