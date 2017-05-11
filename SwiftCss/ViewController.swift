//
//  ViewController.swift
//  SwiftCss
//
//  Created by 谢添才 on 2017/5/9.
//  Copyright © 2017年 谢添才. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var b = UIButton()

        b += ["12312".css ,UIColor.red.bgCss]
        view += b
        b.frame = CGRect.init(x: 0, y: 50, width: 100, height: 44)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

