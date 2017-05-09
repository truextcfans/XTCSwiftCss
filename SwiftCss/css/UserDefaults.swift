//
//  UserDefaults.swift
//  tulip
//
//  Created by 谢添才 on 2017/3/29.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
func tkSave(_ key:String,_ objc:Any){
    kUserDefaults.set(objc, forKey: key)
    
    kUserDefaults.synchronize()
}

func tkDelet(_ key:String){
    kUserDefaults.removeObject(forKey: key)
    kUserDefaults.synchronize()
}

func tkRead(_ key:String) -> Any? {
    return kUserDefaults.object(forKey: key)
}
