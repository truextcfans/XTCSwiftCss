//
//  OtherOperator.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit


public func +=(lhsCube: UIView, rhsCube: UIView){
    lhsCube.addSubview(rhsCube)
}

public func +=(lhsCube: UIView, rhsCube: [UIView]){
    rhsCube.forEach{
        lhsCube.addSubview($0)
    }
}

public func +<T>( lhsCube: T, rhsCube: T)->[T]{
    return [lhsCube,rhsCube]
}

public func +<T>( lhsCube: [T], rhsCube: T)->[T]{
    var fin = lhsCube
    fin.append(rhsCube)
    return fin
}

public func +<T>( lhsCube: T, rhsCube: [T])->[T]{
    var fin = rhsCube
    fin.insert(lhsCube, at: 0)
    return fin
}

public func +=( lhsCube: CALayer, rhsCube: CALayer){
    lhsCube.addSublayer(rhsCube)
}

