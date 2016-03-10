//
//  ViewController.swift
//  SimpleHUDDemo
//
//  Created by 李建澎 on 16/3/10.
//  Copyright © 2016年 FIsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clear(sender: AnyObject) {
        self.clearAllNotice()
    }
    
    @IBAction func zairu1(sender: AnyObject) {
        self.pleaseWait(false, transparent: 0)
    }
    
    @IBAction func zairu2(sender: AnyObject) {
        self.pleaseWait("载入中...", shade: false, transparent: 0)
    }
    @IBAction func zairu3(sender: AnyObject) {
        //self.pleaseSmallWait("载入中...")
        self.pleaseSmallWait("载入中", shade: false, transparent: 0)
    }
    
    @IBAction func cg(sender: AnyObject) {
        self.simpleSuccess("执行成功", shade: false, transparent: 0)
    }
    
    @IBAction func error(sender: AnyObject) {
        self.simpleError("执行失败", shade: true, transparent: 0,autoClear: true, autoClearTime: 3)
    }

    @IBAction func info(sender: AnyObject) {
        self.simpleInfo("哈哈", shade: true, transparent: 0.3, autoClear: true, autoClearTime: 5)
    }

    @IBAction func top(sender: AnyObject) {
        self.simpleTop("你好啊")
    }
    @IBAction func bottom(sender: AnyObject) {
        self.simpleBottomText("大家好")
    }
}

