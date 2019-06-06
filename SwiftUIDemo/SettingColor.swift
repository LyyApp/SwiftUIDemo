//
//  SettingColor.swift
//  SwiftUIDemo
//
//  Created by 李元元 on 2019/6/5.
//  Copyright © 2019 李元元. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

extension Font{
    static func fontWithSize(fontSize:CGFloat , bold:Bool) -> Font {
        if (bold) {
            return Font.custom("HYCuYuanJ", size: fontSize);
        }else{
            return Font.custom("HYZhongYuanJ", size: fontSize);
        }
        
    }
}


extension Color{
    static func colorHexStr(hexStr:String) -> Color{
        var cStr = hexStr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased() as NSString;
        
        if(cStr.length < 6){
            return Color.clear;
        }
        
        if(cStr.hasPrefix("0x") || cStr.hasPrefix("0X")){
            cStr = cStr.substring(from: 2) as NSString;
        }
        
        if(cStr.hasPrefix("#")){
            cStr = cStr.substring(from: 1) as NSString;
        }
        
        if (cStr.length != 6) {
            return Color.clear;
        }
        
        let rStr = (cStr as NSString).substring(to: 2)
        let gStr = ((cStr as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bStr = ((cStr as NSString).substring(from: 4) as NSString).substring(to: 2)
        
        let r : Int32 = Scanner.init(string: rStr).scanInt32(representation: .hexadecimal)!
        let g : Int32 = Scanner.init(string: gStr).scanInt32(representation: .hexadecimal)!
        let b : Int32 = Scanner.init(string: bStr).scanInt32(representation: .hexadecimal)!
        
        return Color.init(red: Double(r)/255, green: Double(g)/255, blue: Double(b)/255)
    }
}

extension UIColor{
    class func colorWithHex(hexStr:String) -> UIColor {
        return UIColor.colorWithHex(hexStr: hexStr, alpha: 1)
    }
}

extension UIColor{
    class func colorWithHex(hexStr:String , alpha:Float) -> UIColor {
        var cStr = hexStr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased() as NSString;
        
        if(cStr.length < 6){
            return UIColor.clear;
        }
        
        if(cStr.hasPrefix("0x")){
            cStr = cStr.substring(from: 2) as NSString;
        }
        
        if(cStr.hasPrefix("#")){
            cStr = cStr.substring(from: 1) as NSString;
        }
        
        if (cStr.length != 6) {
            return UIColor.clear;
        }
        
        let rStr = (cStr as NSString).substring(to: 2)
        let gStr = ((cStr as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bStr = ((cStr as NSString).substring(from: 4) as NSString).substring(to: 2)
        
        let r : Int32 = Scanner.init(string: rStr).scanInt32(representation: .hexadecimal)!
        let g : Int32 = Scanner.init(string: gStr).scanInt32(representation: .hexadecimal)!
        let b : Int32 = Scanner.init(string: bStr).scanInt32(representation: .hexadecimal)!
        
        return UIColor.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1)
    }
}
