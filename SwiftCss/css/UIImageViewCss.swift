//
//  UIImageViewCss.swift
//  asCss
//
//  Created by 谢添才 on 2017/3/1.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit

func +=(lhsCube: UIImageView, rhsCube:UIImage?){
    lhsCube.image = rhsCube
}

extension UIImage{
    var css:UIImageViewCss{
        return{
            $0.image = self
        }
    }
    
    var hCss:UIImageViewCss{
        return{
            $0.highlightedImage = self
        }
    }
}
























