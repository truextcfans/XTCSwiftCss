//
//  UIButtonCss.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit


func titleCss(_ title:String,_ state:UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setTitle(title, for: state)
    }
}
func titleColorCss(_ color:UIColor,_ state:UIControlState = .normal) -> UIButtonCss {
    return {
        $0.setTitleColor(color, for: state)
    }
}
//func bgImgCss(_ color:UIColor,_ state:UIControlState = .normal) -> UIButtonCss {
//    return {
//        $0.setBackgroundImage(color.translateIntoImage(), for: state)
//    }
//}

func +=(lhsCube: UIButton, rhsCube:UIImage){
    lhsCube.setBackgroundImage(rhsCube, for: .normal)
}
func +=(lhsCube: UIButton, rhsCube:String){
    lhsCube.setTitle(rhsCube, for: .normal)
}

func +=(lhsCube: UIButton, rhsCube:UIFont){
    lhsCube.titleLabel?.font = rhsCube
}
//func +=(lhsCube: UIButton, rhsCube:CGFloat){
//    lhsCube.titleLabel?.font = rhsCube.CustomFont
//}



extension UIImage{
    var bgCss:UIButtonCss{
        get{
            return{
                $0.setBackgroundImage(self, for: .normal)
            }
        }
    }
    var bgHCss:UIButtonCss{
        get{
            return{
                $0.setBackgroundImage(self, for: .highlighted)
            }
        }
    }

}

extension UIFont{
    var titleFontCss:UIButtonCss{
        get{
            return {
                $0.titleLabel?.font = self
            }
        }
    }
}
//extension CGFloat{
//    var titleFontCss:UIButtonCss{
//        get{
//            return {
//                $0.titleLabel?.font = self.CustomFont
//            }
//        }
//    }
//    
//    var titleRegularFontCss:UIButtonCss{
//        get{
//            return {
//                $0.titleLabel?.font = self.CustomRegularFont
//            }
//        }
//    }
//}




extension String{
    var titleCss:UIButtonCss{
        get{
            return {
                $0.setTitle(self, for: .normal)
            }
        }
    }
    var titleHCss:UIButtonCss{
        get{
            return {
                $0.setTitle(self, for: .highlighted)
            }
        }
    }
}
