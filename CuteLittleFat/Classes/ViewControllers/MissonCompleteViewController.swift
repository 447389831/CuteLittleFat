//
//  MissonCompleteViewController.swift
//  CuteLittleFat
//
//  Created by 陈文琦 on 15/1/25.
//  Copyright (c) 2015年 xzl. All rights reserved.
//

import UIKit

class MissonCompleteViewController: UIViewController {
    @IBOutlet weak var commitBtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(){
        dismissViewControllerAnimated(true, completion: nil)
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
