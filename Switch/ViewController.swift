//
//  ViewController.swift
//  Switch
//
//  Created by Deki on 15/10/23.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  mainSwitch:UISwitch?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainSwitch = UISwitch(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        // 关闭的颜色， 效果只能显示在边缘
        mainSwitch!.tintColor = UIColor.redColor()
        // 小按钮
        mainSwitch!.thumbTintColor = UIColor.greenColor()
        //打开状态时颜色
        mainSwitch!.onTintColor = UIColor.blueColor()
        
        // 设置状态
        mainSwitch?.setOn(false, animated: true)
        // 添加响应函数
        mainSwitch!.addTarget(self, action: "onSwitch:", forControlEvents: UIControlEvents.ValueChanged)
        
        
        view.addSubview(mainSwitch!)
    }
    
    func onSwitch(sender:UISwitch) {
        if sender.on {
            print("open")
        } else {
            print("Close")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

