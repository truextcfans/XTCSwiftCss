//
//  OtherOperator.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit


func +=<T:UIView,W:UIView>( lhsCube: T, rhsCube: W){
    lhsCube.addSubview(rhsCube)
}

func +=<T:UIView>( lhsCube: T, rhsCube: [UIView]){
    rhsCube.forEach{
        lhsCube.addSubview($0)
    }
}

func +<T:UIView,W:UIView>( lhsCube: T, rhsCube: W)->[UIView]{
    return [lhsCube,rhsCube]
}

func +=<T:CALayer,W:CALayer>( lhsCube: T, rhsCube: W){
    lhsCube.addSublayer(rhsCube)
}

