//
//  UILabelCss.swift
//  asCss
//
//  Created by 谢添才 on 2017/2/28.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import Foundation
import UIKit


var lableFitSizeCss:UILabelCss = {
    $0.sizeToFit()
}

func +=(lhsCube: UILabel, rhsCube:String){
    lhsCube.text = rhsCube
}
func +=(lhsCube: UILabel, rhsCube:UIFont){
    lhsCube.font = rhsCube
}
func +=(lhsCube: UILabel, rhsCube:CGFloat){
    lhsCube.font = rhsCube.CustomFont
}



extension Bool{
    var ableCss:UILabelCss{
        get{
            return{
                $0.isEnabled = self
            }
        }
    }

}


extension String{
    var textCss:UILabelCss{
        get{
            return{
                $0.text = self
            }
        }
    }
}

extension UIFont{
    var css:Css{
        get{
            return {
                if let a = $0 as? UILabel{
                    a.font = self
                    return
                }
                if let a = $0 as? UITextView{
                    a.font = self
                    return
                }
                if let a = $0 as? UITextField{
                    a.font = self
                    return
                }
                if let a = $0 as? UIButton{
                    a.titleLabel?.font = self
                    return
                }
            }
        }
    }
}
extension CGFloat{
    var fontCss:Css{
        get{
            if let font = self.CustomFont{
                return font.css
            }
            return {_ in }
        }
    }
    
    var regularFontCss:UILabelCss{
        get{
            if let font = self.CustomRegularFont{
                return font.css
            }
            return {_ in }
        }
    }
}
extension Int{
    var fontCss:Css{
        get{
            if let font = self.CustomFont{
                return font.css
            }
            return {_ in }
        }
    }

    var linesCss:UILabelCss{
        get{
            return {
                $0.numberOfLines = self
            }
        }
    }
}





extension NSTextAlignment{
    var css:UIViewCss{
        get{
            return {
                if let a = $0 as? UILabel{
                    a.textAlignment = self
                    return
                }
                if let a = $0 as? UITextField{
                    a.textAlignment = self
                    return
                }
                if let a = $0 as? UITextView{
                    a.textAlignment = self
                    return
                }
            }
        }
    }
}











