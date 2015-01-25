//
//  PushUpViewController.swift
//  CuteLittleFat
//
//  Created by 陈文琦 on 15/1/5.
//  Copyright (c) 2015年 xzl. All rights reserved.
//

import UIKit

class PushUpViewController: UIViewController {
    @IBOutlet weak var numLabel:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var device = UIDevice.currentDevice()
        device.proximityMonitoringEnabled = true
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"proximitySensorChange:" , name: "UIDeviceProximityStateDidChangeNotification", object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func proximitySensorChange(notification:NSNotificationCenter) {
        var device = UIDevice.currentDevice()
        
        if device.proximityState {
            var num:Int! = numLabel.text?.toInt()
            num = num + 1
            numLabel.text = "\(num)"
        }
    }
    
    @IBAction func finishPushUp(){
        let helper = PushUpCoreDataHelper()
        //保存数据
        var num:String! = numLabel.text?
        helper.addPushUpWithCount(num)
        
        NSLog("%d", helper.getPushUpCount())
        
        var device = UIDevice.currentDevice()
        device.proximityMonitoringEnabled = false
        //跳转回主页
        //self.navigationController?.popToRootViewControllerAnimated(true)
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
