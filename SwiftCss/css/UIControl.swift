//
//  UIControl.swift
//  tulip
//
//  Created by 谢添才 on 2017/3/14.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit

typealias UIControlCss = (UIControl)->()

func enable(_ value:Bool) -> UIControlCss {
    return {
        $0.isEnabled = value
    }
}
