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
        let b = UIButton()
        view += b
        let bt = UIButton()
        let lb = UILabel()
        let tf = UILabel()
        view += bt + lb + (tf + "a".css)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

