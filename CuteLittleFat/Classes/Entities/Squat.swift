//
//  Squat.swift
//  CuteLittleFat
//
//  Created by 陈文琦 on 15/1/10.
//  Copyright (c) 2015年 xzl. All rights reserved.
//

import Foundation
import CoreData

@objc(Squat)
class Squat: NSManagedObject {

    @NSManaged var date: String
    @NSManaged var num: String

}
