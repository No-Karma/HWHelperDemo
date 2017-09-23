//
//  HWHelper.swift
//  HWHelperDemo
//
//  Created by 刘海文 on 2017/9/23.
//  Copyright © 2017年 刘海文. All rights reserved.
//

import Foundation

import UIKit
struct HWHelper {
    /**
    获取屏幕Size -> 宽度、高度
     */
    struct Screen {
        /** 尺寸 */
        static let size   = UIScreen.main.bounds.size
         /** 宽度 */
        static let width:CGFloat  = size.width
         /** 高度 */
        static let height:CGFloat = size.height
    }
    
    

    /** 通过RGB创建 UIColor */
    static func RGBA(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat,_ a:CGFloat = 1.0)->UIColor{
        return UIColor.init(red: r/100, green: g/100, blue: b/100, alpha: a)
    }
    
    struct Regex {
        /**
         实现：检查手机号是否符合规范
         
         - parameter phoneNumber: 手机号
         
         - returns: 布尔值
         */
        static func checkPhoneNumber(phoneNumber:String)->Bool{
            let regex:NSRegularExpression
            do {
                regex = try NSRegularExpression(pattern: "^[1][345789][0-9]{9}$", options: NSRegularExpression.Options.caseInsensitive)
                let matches = regex.matches(in: phoneNumber, options: NSRegularExpression.MatchingOptions.reportCompletion , range: NSMakeRange(0, phoneNumber.characters.count))
                if matches.count > 0 {
                    return true
                }
                else {
                    return false
                }
            }
            catch{
                
            }
            return false
        }
    }
    
}
