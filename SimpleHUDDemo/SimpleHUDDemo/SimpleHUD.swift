//
//  SimpleHUD.swift
//  基于SwiftNoticeSDK开发, 修改部分内容
//  原声SwiftNotice https://github.com/johnlui/SwiftNotice
//
//  Created by GhostFish on 16/3/9.
//  Copyright © 2016年 JY. All rights reserved.
//
import Foundation
import UIKit



//MARK: - 显示重载方法

extension UIViewController {
    
    //MARK: - 重载 基本参数
    /**
    提示成功(对号)
    
    - parameter text:          显示文字
    - parameter shade:         是否有遮罩层
    - parameter transparent:   透明度   0.0 - 1.0
    */
    func simpleSuccess(text: String,shade:Bool,transparent:CGFloat) {
        SimpleHUD.showNoticeWithText(SimpleType.success, text: text,shade:shade,transparent:transparent, autoClear: true, autoClearTime: 1)
    }
    /**
     提示错误(叉号)
     
     - parameter text:          显示文字
     - parameter shade:         是否有遮罩层
     - parameter transparent:   透明度   0.0 - 1.0
     */
    func simpleError(text: String,shade:Bool,transparent:CGFloat) {
        SimpleHUD.showNoticeWithText(SimpleType.error, text: text,shade:shade,transparent:transparent, autoClear: true, autoClearTime: 1)
    }
    /**
     提示消息(感叹号)
     
     - parameter text:          显示文字
     - parameter shade:         是否有遮罩层
     - parameter transparent:   透明度   0.0 - 1.0
     */
    func simpleInfo(text: String,shade:Bool,transparent:CGFloat) {
        SimpleHUD.showNoticeWithText(SimpleType.info, text: text,shade:shade,transparent:transparent, autoClear: true, autoClearTime: 1)
    }
    
    //MARK: - 重载 所有参数
    /**
    提示成功(对号)
    
    - parameter text:          显示文字
    - parameter shade:         是否有遮罩层
    - parameter transparent:   透明度   0.0 - 1.0
    - parameter autoClear:     是否自动隐藏
    - parameter autoClearTime: 自动隐藏时间(单位:秒)
    */
    func simpleSuccess(text: String,shade:Bool,transparent:CGFloat, autoClear: Bool, autoClearTime: Int) {
        SimpleHUD.showNoticeWithText(SimpleType.success, text: text,shade:shade,transparent:transparent, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    /**
     提示错误(叉号)
     
     - parameter text:          显示文字
     - parameter shade:         是否有遮罩层
     - parameter transparent:   透明度   0.0 - 1.0
     - parameter autoClear:     是否自动隐藏
     - parameter autoClearTime: 自动隐藏时间(单位:秒)
     */
    func simpleError(text: String,shade:Bool,transparent:CGFloat, autoClear: Bool, autoClearTime: Int) {
        SimpleHUD.showNoticeWithText(SimpleType.error, text: text,shade:shade,transparent:transparent, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    /**
     提示消息(感叹号)
     
     - parameter text:          显示文字
     - parameter shade:         是否有遮罩层
     - parameter transparent:   透明度   0.0 - 1.0
     - parameter autoClear:     是否自动隐藏
     - parameter autoClearTime: 自动隐藏时间(单位:秒)
     */
    func simpleInfo(text: String,shade:Bool,transparent:CGFloat, autoClear: Bool, autoClearTime: Int) {
        SimpleHUD.showNoticeWithText(SimpleType.info, text: text,shade:shade,transparent:transparent, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    
    //MARK: - 加载图片的方法 和 top显示文字的方法
    
    /**
    加载中图片(没文字)
    
    - parameter shade:        是否有遮罩层
    - parameter transparent:  透明度   0.0 - 1.0
    - parameter imageNames:   自定义图片加载[数组]
    - parameter timeInterval: 图片的加载时间间隔
    */
    func pleaseWaitWithImages(shade:Bool,transparent:CGFloat,imageNames: Array<UIImage>, timeInterval: Int) {
        SimpleHUD.wait(shade,transparent: transparent,imageNames: imageNames, timeInterval: timeInterval)
    }
    
    /**
     加载中图片(没文字)
     
     - parameter shade:        是否有遮罩层
     - parameter transparent:  透明度   0.0 - 1.0
     - parameter imageNames:   自定义图片加载[数组]
     - parameter timeInterval: 图片的加载时间间隔
     */
    func pleaseWait(shade:Bool,transparent:CGFloat) {
        SimpleHUD.wait(shade,transparent: transparent,imageNames: Array<UIImage>(), timeInterval: 0)
    }
    /**
     小型加载HUD
     
     - parameter text: 显示文字
     */
    func pleaseSmallWait(text:String) {
        SimpleHUD.smallWait(true,transparent: 0,text:text)
    }
    /**
     小型加载HUD
     
     - parameter text:        显示文字
     - parameter shade:       是否有遮罩层
     - parameter transparent: 透明度   0.0 - 1.0
     */
    func pleaseSmallWait(text:String,shade:Bool,transparent:CGFloat) {
        SimpleHUD.smallWait(shade,transparent: transparent,text:text)
    }
    
    
    /**
     加载中图片(有文字)
     
     - parameter shade:        是否有遮罩层
     - parameter transparent:  透明度   0.0 - 1.0
     - parameter imageNames:   自定义图片加载[数组]
     - parameter timeInterval: 图片的加载时间间隔
     */
    func pleaseWait(text:String,shade:Bool,transparent:CGFloat) {
        SimpleHUD.wait(shade,transparent: transparent,text: text ,imageNames: Array<UIImage>(), timeInterval: 0)
    }
    
    /**
     topbar显示文字
     
     - parameter text:          显示文字
     - parameter autoClear:     是否自动隐藏
     - parameter autoClearTime: 自动隐藏时间(单位:秒)
     */
    func simpleTop(text: String, autoClear: Bool = true, autoClearTime: Int = 1) {
        SimpleHUD.noticeOnSatusBar(text, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    /**
     显示文字(仅文字)
     
     - parameter text: 显示文字
     */
    func simpleOnlyText(text: String) {
        SimpleHUD.showText(text, shade: false, transparent: 0)
    }
    /**
     底部显示文字(仅文字)
     
     - parameter text: 显示文字
     */
    func simpleBottomText(text: String) {
        SimpleHUD.bottomText(text,autoClear: true, autoClearTime: 5)
    }
    /**
     底部显示文字(仅文字)
     
     - parameter text:          显示文字
     - parameter autoClear:     是否自动隐藏
     - parameter autoClearTime: 自动隐藏的时间
     - parameter height:        距离底部的间距(自行调整)
     */
    func simpleBottomText(text: String,autoClear:Bool,autoClearTime:Int,height:CGFloat) {
        SimpleHUD.bottomText(text,autoClear: autoClear, autoClearTime: autoClearTime,height:height)
    }
    
    /**
     清空所有HUD
     */
    func clearAllNotice() {
        SimpleHUD.clear()
    }
}

/**
 提示类型枚举
 
 - success: 成功
 - error:   错误
 - info:    信息
 */
enum SimpleType{
    case success
    case error
    case info
}


//MARK: - SimpleHUD类

class SimpleHUD: NSObject {
    static var windows = Array<UIWindow!>()
    static let rv = UIApplication.sharedApplication().keyWindow?.subviews.first as UIView!
    static var timer: dispatch_source_t!
    static var timerTimes = 0
    static var alpha = UIColor(red:0, green:0, blue:0, alpha: 0.8)
    static var maincornerRadius:CGFloat = 5
    static var degree: Double {
        get {
            return [0, 0, 180, 270, 90][UIApplication.sharedApplication().statusBarOrientation.hashValue] as Double
        }
    }
    /// 居中静态变量
    static var center: CGPoint {
        get {
            var array = [UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height]
            array = array.sort(<)
            let screenWidth = array[0]
            let screenHeight = array[1]
            let x = [0, screenWidth/2, screenWidth/2, 10, screenWidth-10][UIApplication.sharedApplication().statusBarOrientation.hashValue] as CGFloat
            let y = [0, 10, screenHeight-10, screenHeight/2, screenHeight/2][UIApplication.sharedApplication().statusBarOrientation.hashValue] as CGFloat
            return CGPointMake(x, y)
        }
    }
   
    /**
     清除hud
     */
    static func clear() {
        self.cancelPreviousPerformRequestsWithTarget(self)
        if let _ = timer {
            dispatch_source_cancel(timer)
            timer = nil
            timerTimes = 0
        }
        windows.removeAll(keepCapacity: false)
    }

    /**
     Loading....
     
     - parameter shade:        是否有遮罩层 true:有  false:没有
     - parameter transparent:  遮罩层透明度  0为全透明
     - parameter imageNames:   动态图片
     - parameter timeInterval: 图片的加载时间间隔
     */
    static func wait(shade:Bool ,transparent:CGFloat,text:String = String() ,imageNames: Array<UIImage> = Array<UIImage>(), timeInterval: Int = 0) {
        if(windows.count>0){return}
        let frame = CGRectMake(0, 0, 90, 90)
        let window = UIWindow()
        window.backgroundColor = UIColor.clearColor()
        let mainView = UIView()
        mainView.layer.cornerRadius = maincornerRadius
        mainView.backgroundColor = alpha
        
        if imageNames.count > 0 {
            if imageNames.count > timerTimes {
                let iv = UIImageView(frame: frame)
                iv.image = imageNames.first!
                iv.contentMode = UIViewContentMode.ScaleAspectFit
                mainView.addSubview(iv)
                timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue())
                dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, UInt64(timeInterval) * NSEC_PER_MSEC, 0)
                dispatch_source_set_event_handler(timer, { () -> Void in
                    let name = imageNames[timerTimes % imageNames.count]
                    iv.image = name
                    timerTimes++
                })
                dispatch_resume(timer)
            }
        } else {
            let ai = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
            var height:CGFloat = 27
            if !text.isEmpty {height = 14}
            
            ai.frame = CGRectMake(27, height, 36, 36)
            ai.startAnimating()
            mainView.addSubview(ai)
        }
        
        if !text.isEmpty{
            let label = UILabel(frame: CGRectMake(0, 60, 90, 16))
            label.font = UIFont.systemFontOfSize(13)
            label.textColor = UIColor.whiteColor()
            label.text = text
            label.textAlignment = NSTextAlignment.Center
            mainView.addSubview(label)
        }
        
        mainView.frame = frame
        window.windowLevel = UIWindowLevelAlert
        
        if shade{
            //有遮罩层
            mainView.center = getRealCenter()
            window.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: transparent)
        }else{
            //没有遮罩层
            window.frame = frame
            window.center = getRealCenter()
        }
        
        
        // change orientation
        window.transform = CGAffineTransformMakeRotation(CGFloat(degree * M_PI / 180))
        window.hidden = false
        window.addSubview(mainView)
        windows.append(window)
    }
    
    static func smallWait(shade:Bool ,transparent:CGFloat,text:String = String()) {
        if(windows.count>0){return}
        
        let window = UIWindow()
        window.backgroundColor = UIColor.clearColor()
        let mainView = UIView()
        mainView.layer.cornerRadius = maincornerRadius
        mainView.backgroundColor = alpha
        
        let ai = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.White)
        
        ai.frame = CGRectMake(3, 5, 20, 20)
        ai.startAnimating()
        mainView.addSubview(ai)
        
        let label = UILabel(frame: CGRectMake(27, 7, 80, 20))
        label.font = UIFont.systemFontOfSize(13)
        label.textColor = UIColor.whiteColor()
        label.text = text
        label.textAlignment = NSTextAlignment.Left
        label.sizeToFit()
        mainView.addSubview(label)
        
        print(label.frame.width)
        let frame = CGRectMake(0, 0, label.frame.width+35, 30)
        mainView.frame = frame
        window.windowLevel = UIWindowLevelAlert
        
        if shade{
            //有遮罩层
            mainView.center = getRealCenter()
            window.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: transparent)
        }else{
            //没有遮罩层
            window.frame = frame
            window.center = getRealCenter()
        }
        
        
        // change orientation
        window.transform = CGAffineTransformMakeRotation(CGFloat(degree * M_PI / 180))
        window.hidden = false
        window.addSubview(mainView)
        windows.append(window)
    }
    
    /**
     显示HUD类型加文字信息
     
     - parameter type:          消息类型
     - parameter text:          显示文字
     - parameter shade:         是否有遮罩层 true:有  false:没有
     - parameter transparent:   遮罩层透明度  0为全透明
     - parameter autoClear:     是否自动隐藏
     - parameter autoClearTime: 自动隐藏时间(单位:秒)
     */
    static func showNoticeWithText(type: SimpleType,text: String,shade:Bool,transparent:CGFloat, autoClear: Bool, autoClearTime: Int) {
        if(windows.count>0){return}
        let frame = CGRectMake(0, 0, 90, 90)
        let window = UIWindow()
        window.backgroundColor = UIColor.clearColor()
        let mainView = UIView()
        mainView.layer.cornerRadius = maincornerRadius
        mainView.backgroundColor = alpha
        
        var image = UIImage()
        switch type {
        case .success:
            image = SwiftNoticeSDK.imageOfCheckmark
        case .error:
            image = SwiftNoticeSDK.imageOfCross
        case .info:
            image = SwiftNoticeSDK.imageOfInfo
        }
        let checkmarkView = UIImageView(image: image)
        checkmarkView.frame = CGRectMake(27, 15, 36, 36)
        mainView.addSubview(checkmarkView)
        
        let label = UILabel(frame: CGRectMake(0, 60, 90, 16))
        label.font = UIFont.systemFontOfSize(13)
        label.textColor = UIColor.whiteColor()
        label.text = text
        label.textAlignment = NSTextAlignment.Center
        mainView.addSubview(label)
        
        mainView.frame = frame
        window.windowLevel = UIWindowLevelAlert
        
        
        if shade{
            //有遮罩层
            mainView.center = getRealCenter()
            window.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: transparent)
        }else{
            //没有遮罩层
            window.frame = frame
            window.center = getRealCenter()
        }
        // change orientation
        window.transform = CGAffineTransformMakeRotation(CGFloat(degree * M_PI / 180))
        window.hidden = false
        window.addSubview(mainView)
        windows.append(window)
        
        if autoClear {
            let selector = Selector("hideNotice:")
            self.performSelector(selector, withObject: window, afterDelay: NSTimeInterval(autoClearTime))
        }
    }
    
    /**
     只是显示文字
     
     - parameter text:         显示文字
     - parameter shade:        是否有遮罩层 true:有  false:没有
     - parameter transparent:  遮罩层透明度  0为全透明
     */
    static func showText(text: String,shade:Bool,transparent:CGFloat) {
        //判断如果windows有一个对象就不在执行
        if(windows.count>0){return}
        let window = UIWindow()
        window.backgroundColor = UIColor.clearColor()
        let mainView = UIView()
        mainView.layer.cornerRadius = maincornerRadius
        mainView.backgroundColor = alpha
        
        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.font = UIFont.systemFontOfSize(13)
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.whiteColor()
        label.sizeToFit()
        mainView.addSubview(label)
        
        let superFrame = CGRectMake(0, 0, label.frame.width + 50 , label.frame.height + 30)
        
        mainView.frame = superFrame
        
        label.center = mainView.center
        
        window.windowLevel = UIWindowLevelAlert
        if shade{
            //有遮罩层
            mainView.center = getRealCenter()
            window.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: transparent)
        }else{
            //没有遮罩层
            window.frame = superFrame
            window.center = getRealCenter()
        }
        
        // change orientation
        window.transform = CGAffineTransformMakeRotation(CGFloat(degree * M_PI / 180))
        window.hidden = false
        window.addSubview(mainView)
        windows.append(window)
    }
    
    /**
     只是显示文字
     
     - parameter text:         显示文字
     - parameter shade:        是否有遮罩层 true:有  false:没有
     - parameter transparent:  遮罩层透明度  0为全透明
     */
    static func bottomText(text: String,autoClear: Bool = true, autoClearTime: Int = 5,height:CGFloat = 70) {
        //判断如果windows有一个对象就不在执行
        if(windows.count>0){return}
        let window = UIWindow()
        window.backgroundColor = UIColor.clearColor()
        let mainView = UIView()
        mainView.layer.cornerRadius = maincornerRadius
        mainView.backgroundColor = alpha
        
        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.font = UIFont.systemFontOfSize(14)
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.whiteColor()
        label.sizeToFit()
        mainView.addSubview(label)
        
        let superFrame = CGRectMake(0, 0, label.frame.width + 30 , label.frame.height + 10)
        
        mainView.frame = superFrame
        
        label.center = mainView.center
        
        window.windowLevel = UIWindowLevelAlert
        
        window.frame = superFrame
        window.center = getRealBottom(height)
        // change orientation
        window.transform = CGAffineTransformMakeRotation(CGFloat(degree * M_PI / 180))
        window.hidden = false
        window.addSubview(mainView)
        windows.append(window)
        
        if autoClear {
            let selector = Selector("hideNotice:")
            self.performSelector(selector, withObject: window, afterDelay: NSTimeInterval(autoClearTime))
        }
    }

    
    
    /**
     topbar显示信息内容
     
     - parameter text:          显示文字
     - parameter autoClear:     是否自动隐藏
     - parameter autoClearTime: 自动隐藏时间(单位:秒)
     */
    static func noticeOnSatusBar(text: String, autoClear: Bool, autoClearTime: Int) {
        if(windows.count>0){return}
        let frame = UIApplication.sharedApplication().statusBarFrame
        let window = UIWindow()
        window.backgroundColor = UIColor.clearColor()
        let view = UIView()
        view.backgroundColor = UIColor(red: 0x6a/0x100, green: 0xb4/0x100, blue: 0x9f/0x100, alpha: 1)
        
        let label = UILabel(frame: frame)
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont.systemFontOfSize(12)
        label.textColor = UIColor.whiteColor()
        label.text = text
        view.addSubview(label)
        
        window.frame = frame
        view.frame = frame
        
        window.windowLevel = UIWindowLevelStatusBar
        window.hidden = false
        // change orientation
        window.center = center
        window.transform = CGAffineTransformMakeRotation(CGFloat(degree * M_PI / 180))
        window.addSubview(view)
        windows.append(window)
        
        if autoClear {
            let selector = Selector("hideNotice:")
            self.performSelector(selector, withObject: window, afterDelay: NSTimeInterval(autoClearTime))
        }
    }
    
    static func hideNotice(sender: AnyObject) {
        if let window = sender as? UIWindow {
            if let index = windows.indexOf({ (item) -> Bool in
                return item == window
            }) {
                windows.removeAtIndex(index)
            }
        }
    }
    
    //获取hud居中
    static func getRealCenter() -> CGPoint {
        if UIApplication.sharedApplication().statusBarOrientation.hashValue >= 3 {
            return CGPoint(x: rv.center.y, y: rv.center.x)
        } else {
            return rv.center
        }
    }
    
//    static var bottom: CGPoint {
//        get {
//            var array = [UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height]
//            array = array.sort(<)
//            let screenWidth = array[0]
//            let x = [0, screenWidth/2, screenWidth/2, 10, screenWidth-10][UIApplication.sharedApplication().statusBarOrientation.hashValue] as CGFloat
//            let y = UIScreen.mainScreen().bounds.height as CGFloat
//            return CGPointMake(x, y - 70)
//        }
//    }
    
    //获取hud底部
    static func getRealBottom(height:CGFloat = 70) -> CGPoint {
        var array = [UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height]
        array = array.sort(<)
        let screenWidth = array[0]
        let x = [0, screenWidth/2, screenWidth/2, 10, screenWidth-10][UIApplication.sharedApplication().statusBarOrientation.hashValue] as CGFloat
        let y = UIScreen.mainScreen().bounds.height as CGFloat
        return CGPointMake(x, y - height)
    }
}



//MARK: - SwiftNoticeSDK类

class SwiftNoticeSDK {
    struct Cache {
        static var imageOfCheckmark: UIImage?
        static var imageOfCross: UIImage?
        static var imageOfInfo: UIImage?
    }
    class func draw(type: SimpleType) {
        let checkmarkShapePath = UIBezierPath()
        
        // draw circle
        checkmarkShapePath.moveToPoint(CGPointMake(36, 18))
        checkmarkShapePath.addArcWithCenter(CGPointMake(18, 18), radius: 17.5, startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: true)
        checkmarkShapePath.closePath()
        
        switch type {
        case .success: // draw checkmark
            checkmarkShapePath.moveToPoint(CGPointMake(10, 18))
            checkmarkShapePath.addLineToPoint(CGPointMake(16, 24))
            checkmarkShapePath.addLineToPoint(CGPointMake(27, 13))
            checkmarkShapePath.moveToPoint(CGPointMake(10, 18))
            checkmarkShapePath.closePath()
        case .error: // draw X
            checkmarkShapePath.moveToPoint(CGPointMake(10, 10))
            checkmarkShapePath.addLineToPoint(CGPointMake(26, 26))
            checkmarkShapePath.moveToPoint(CGPointMake(10, 26))
            checkmarkShapePath.addLineToPoint(CGPointMake(26, 10))
            checkmarkShapePath.moveToPoint(CGPointMake(10, 10))
            checkmarkShapePath.closePath()
        case .info:
            checkmarkShapePath.moveToPoint(CGPointMake(18, 6))
            checkmarkShapePath.addLineToPoint(CGPointMake(18, 22))
            checkmarkShapePath.moveToPoint(CGPointMake(18, 6))
            checkmarkShapePath.closePath()
            
            UIColor.whiteColor().setStroke()
            checkmarkShapePath.stroke()
            
            let checkmarkShapePath = UIBezierPath()
            checkmarkShapePath.moveToPoint(CGPointMake(18, 27))
            checkmarkShapePath.addArcWithCenter(CGPointMake(18, 27), radius: 1, startAngle: 0, endAngle: CGFloat(M_PI*2), clockwise: true)
            checkmarkShapePath.closePath()
            
            UIColor.whiteColor().setFill()
            checkmarkShapePath.fill()
        }
        
        UIColor.whiteColor().setStroke()
        checkmarkShapePath.stroke()
    }
    class var imageOfCheckmark: UIImage {
        if (Cache.imageOfCheckmark != nil) {
            return Cache.imageOfCheckmark!
        }
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(36, 36), false, 0)
        
        SwiftNoticeSDK.draw(SimpleType.success)
        
        Cache.imageOfCheckmark = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return Cache.imageOfCheckmark!
    }
    class var imageOfCross: UIImage {
        if (Cache.imageOfCross != nil) {
            return Cache.imageOfCross!
        }
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(36, 36), false, 0)
        
        SwiftNoticeSDK.draw(SimpleType.error)
        
        Cache.imageOfCross = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return Cache.imageOfCross!
    }
    class var imageOfInfo: UIImage {
        if (Cache.imageOfInfo != nil) {
            return Cache.imageOfInfo!
        }
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(36, 36), false, 0)
        
        SwiftNoticeSDK.draw(SimpleType.info)
        
        Cache.imageOfInfo = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return Cache.imageOfInfo!
    }
}
