//
//  ViewController.swift
//  WebViewKeyBoard
//
//  Created by 翟现旗 on 16/7/5.
//  Copyright © 2016年 ziank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let htmlStr = "<html> <head><title>UIWebView键盘测试</title></head><body><p/><p/><input type=\"text\" hint=\"输入框\" /></body></html>"
    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "UIWebView键盘测试"
        self.myWebView.loadHTMLString(htmlStr, baseURL: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillShow), name: UIKeyboardWillShowNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func keyboardWillShow(notification:NSNotification) -> Void {
        let delayInSeconds:Double = 0.1
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delayInSeconds * (Double)(NSEC_PER_SEC)))
        // 延时以保证键盘已经出现，可以在window中找到
        dispatch_after(popTime, dispatch_get_main_queue()) { 
            self.hideKeyBoard()
        }
    }
    
    func hideKeyBoard() -> Void {
        for window in UIApplication.sharedApplication().windows {
            if !window.isMemberOfClass(UIWindow.self) {
                let keyboardWindow = window
                if #available(iOS 9.0, *) {
                    self.removeAccessoryBarForiOS9(keyboardWindow as UIView)
                } else if #available(iOS 8.0, *) {
                    self.removeAccessoryBarForiOS8(keyboardWindow as UIView)
                } else {
                    self.removeAccessoryBarForiOS7(keyboardWindow as UIView)
                }
            }
        }
        if #available(iOS 9.0, *) {
            self.removeAccessoryBarForiOS9(UIApplication.sharedApplication().windows.last! as UIView)
        }
    }
    
    func removeAccessoryBarForiOS9(keyboardWindow:UIView) -> Void {
        for possibleFormView:UIView in keyboardWindow.subviews {
            if possibleFormView.isMemberOfClass(NSClassFromString("UIInputSetContainerView")!) {
                for subviewOfInputSetContainerView in possibleFormView.subviews {
                    if subviewOfInputSetContainerView.isMemberOfClass(NSClassFromString("UIInputSetHostView")!) {
                        for subviewOfInputSetHostView in subviewOfInputSetContainerView.subviews {
                            // 隐藏工具条NSClassFromString
                            if subviewOfInputSetHostView.isMemberOfClass(NSClassFromString("UIWebFormAccessory")!) {
                                subviewOfInputSetHostView.layer.opacity = 0
                                subviewOfInputSetHostView.frame = CGRectZero
                            } else if (subviewOfInputSetHostView.isMemberOfClass(NSClassFromString("_UIRemoteKeyboardPlaceholderView")!)) {
                                subviewOfInputSetHostView.layer.opacity = 0
                                subviewOfInputSetHostView.frame = CGRectZero
                                
                                // 这里使用了私有方法获取对应的accessorBar
                                var accessory = subviewOfInputSetHostView.performSelector(Selector("placeheldView")).takeRetainedValue()
                                if accessory.isMemberOfClass(NSClassFromString("UIWebFormAccessory")!) {
                                    let accessory = accessory as! UIView
                                    accessory.layer.opacity = 0
                                    accessory.frame = CGRectZero
                                }
                                
                            }
                                // 键盘背景, UIKBInputBackdropView有两个只隐藏上面的
                            else if subviewOfInputSetHostView.isMemberOfClass(NSClassFromString("UIKBInputBackdropView")!) && subviewOfInputSetHostView.frame.size.height < 100 {
                                subviewOfInputSetHostView.layer.opacity = 0
                                subviewOfInputSetHostView.userInteractionEnabled = false
                            }
                        }
                    }
                }
            }
        }
    }
    
    func removeAccessoryBarForiOS8(keyboardWindow:UIView) -> Void {
        for possibleFormView:UIView in keyboardWindow.subviews {
            if possibleFormView.isMemberOfClass(NSClassFromString("UIInputSetContainerView")!) {
                for subviewOfInputSetContainerView in possibleFormView.subviews {
                    if subviewOfInputSetContainerView.isMemberOfClass(NSClassFromString("UIInputSetHostView")!) {
                        for subviewOfInputSetHostView in subviewOfInputSetContainerView.subviews {
                            // 隐藏工具条
                            if subviewOfInputSetHostView.isMemberOfClass(NSClassFromString("UIWebFormAccessory")!) {
                                subviewOfInputSetHostView.layer.opacity = 0
                                subviewOfInputSetHostView.frame = CGRectZero
                            }
                                // 键盘背景, UIKBInputBackdropView有两个只隐藏上面的
                            else if subviewOfInputSetHostView.isMemberOfClass(NSClassFromString("UIKBInputBackdropView")!) && subviewOfInputSetHostView.frame.size.height < 100 {
                                subviewOfInputSetHostView.layer.opacity = 0
                                subviewOfInputSetHostView.userInteractionEnabled = false
                            }
                        }
                    }
                }
            }
        }
    }
    
    func removeAccessoryBarForiOS7(keyboardWindow:UIView) -> Void {
        for possibleFormView:UIView in keyboardWindow.subviews {
            if possibleFormView.isMemberOfClass(NSClassFromString("UIPeripheralHostView")!) {
                for subviewOfPeripheralHostView in possibleFormView.subviews {
                    // 隐藏工具条
                    if subviewOfPeripheralHostView.isMemberOfClass(NSClassFromString("UIWebFormAccessory")!) {
                        subviewOfPeripheralHostView.layer.opacity = 0
                        subviewOfPeripheralHostView.frame = CGRectZero
                    }
                    // 键盘背景, UIKBInputBackdropView有两个只隐藏上面的
                    else if subviewOfPeripheralHostView.isMemberOfClass(NSClassFromString("UIKBInputBackdropView")!) && subviewOfPeripheralHostView.frame.size.height < 100 {
                        subviewOfPeripheralHostView.layer.opacity = 0
                        subviewOfPeripheralHostView.userInteractionEnabled = false
                    }
                }
            }
        }
    }

}

