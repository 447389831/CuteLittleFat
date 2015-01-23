//
//  PushUpCoreDataHelper.swift
//  CuteLittleFat
//
//  Created by 陈文琦 on 15/1/5.
//  Copyright (c) 2015年 xzl. All rights reserved.
//

import UIKit
import CoreData

class PushUpCoreDataHelper: NSObject {
    
    let context: NSManagedObjectContext!
    
    override init() {
        super.init()
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        context = appDelegate.managedObjectContext!
    }
    
    func addPushUpWithCount(num:String){
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var date:String = dateFormatter.stringFromDate(NSDate())
        
        var theLine: NSManagedObject = NSEntityDescription.insertNewObjectForEntityForName("PushUp", inManagedObjectContext: context) as NSManagedObject
        theLine.setValue(num, forKey: "num")
        theLine.setValue(date, forKey: "date")
        
        var error:NSError? = nil
        context.save(&error)
    }
    
    func getPushUpCount() -> Int {
        var fetchRequest = NSFetchRequest()
        var entity = NSEntityDescription.entityForName("PushUp", inManagedObjectContext: context)
        fetchRequest.entity = entity
        
        var error:NSError? = nil
        var objects:NSArray = context.executeFetchRequest(fetchRequest, error: &error)!
        
        return objects.count
    }
}
