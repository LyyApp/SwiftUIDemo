//
//  WidgetAlert.swift
//  SwiftUIDemo
//
//  Created by 李元元 on 2019/6/10.
//  Copyright © 2019 李元元. All rights reserved.
//

import SwiftUI

struct WidgetAlert : View {
    
    /**
     定义是否能点击的状态位
     */
    @State var showAlert = false
    
    var body: some View {
        VStack{
            /**
             只有一个选项的alert
             */
//            Text("只有一个选项的alert").tapAction{
//                self.showAlert = true
//                }.presentation($showAlert, alert:{
//                    Alert.init(title: Text("只有一个选项的alert"))
//                })
            
//            Text("只有一个选项选项的alert").tapAction {
//                self.showAlert = true
//                }.presentation($showAlert, alert: {
//                    Alert.init(title: Text("alert弹窗标题"), message: Text("alert弹窗摘要"), dismissButton: Alert.Button.default(Text("确认")))
//
//                })
            
            /**
             有两个选项的alert
             */
            Text("有两个选项的alert").tapAction {
                self.showAlert = true
                }.presentation($showAlert, alert: {
                    Alert.init(title: Text("有两个选项的alert"), message: Text("有两个选项的alert的摘要"), primaryButton: Alert.Button.default(Text("第一个按钮").font(.fontWithSize(fontSize: 20, bold: false)).color(.black), onTrigger: {
                        print("第一个按钮")
                    }), secondaryButton: Alert.Button.default(Text("第二个按钮").color(.blue), onTrigger: {
                        print("第二个按钮")
                    }))
                })
        }
        
    }
}

#if DEBUG
struct WidgetAlert_Previews : PreviewProvider {
    static var previews: some View {
        WidgetAlert()
    }
}
#endif
