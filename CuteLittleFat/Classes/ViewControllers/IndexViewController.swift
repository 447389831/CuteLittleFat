//
//  IndexViewController.swift
//  CuteLittleFat
//
//  Created by 陈文琦 on 15/1/25.
//  Copyright (c) 2015年 xzl. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController {
    @IBOutlet weak var startBtn:UIButton!
    //@IBOutlet weak var backImage:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        startBtn.layer.borderWidth = 1
        startBtn.layer.borderColor = UIColor.blackColor().CGColor
        
        //self.view.sendSubviewToBack(backImage)
        self.view.backgroundColor = UIColor(red: 85 / 255, green: 208 / 255, blue: 253 / 255, alpha: 1) //UIImage(named: "Background")!
        
        //startBtn.bringSubviewToFront(<#view: UIView#>)
        //startBtn.frame.size.width = 600
        // Do any additional setup after loading the view.
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
