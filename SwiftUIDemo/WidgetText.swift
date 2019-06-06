//
//  WidgetText.swift
//  SwiftUIDemo
//
//  Created by 李元元 on 2019/6/6.
//  Copyright © 2019 李元元. All rights reserved.
//

import SwiftUI

struct WidgetText : View {
    var body: some View {
        /**
         label相关
         */
        VStack{
            /**
             简单定义了label
             */
            Text("我是一个label")
            /**
             定义label加字体大小
             */
            Text("我是一个label").font(.custom("", size: 20))
            /**
             定义label颜色
             */
        Text("我是一个label").color(Color.colorHexStr(hexStr: "0xff0000"))

            /**
             定义fontWeight
             **/
            VStack{ Text("我是->ultraLight").fontWeight(.ultraLight)
                Text("我是->thin").fontWeight(.thin)
                Text("我是->light").fontWeight(.light)
                Text("我是->regular").fontWeight(.regular)
                Text("我是->medium").fontWeight(.medium)
                Text("我是->semibold").fontWeight(.semibold)
                Text("我是->bold").fontWeight(.bold)
                Text("我是->heavy").fontWeight(.heavy)
                Text("我是->black").fontWeight(.black)
            }
            
            /**
             自定义字体
             */
            VStack{
                Text("自定义字体").font(.fontWithSize(fontSize: 20, bold: true))
                Text("自定义字体").font(.fontWithSize(fontSize: 20, bold: false))
            }
            /**
             加粗字体
             */
            Text("加粗字体").bold()
            /**
             斜体字
             */
            Text("斜体字").italic()
            /**
             贯穿线
             */
            VStack{
                Text("贯穿线").strikethrough(true, color: .green)
                Text("贯穿线").strikethrough(false, color: .green)
            }
            
            
            /**
             下划线
             */
            VStack{
                Text("下划线").underline(true, color: .red)
                Text("下划线").underline(false, color: .red)
            }
            /**
             文字间空格
             */
//            VStack{
//                Text("大量的空格").kerning(10.0)
//            }
            
            /**
             底部基线距离
             */
            VStack{
               Text("大量的空格").baselineOffset(10)
            }
            
            
        }
    }
}

#if DEBUG
struct WidgetText_Previews : PreviewProvider {
    static var previews: some View {
        WidgetText()
    }
}
#endif
