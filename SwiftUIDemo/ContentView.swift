//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 李元元 on 2019/6/4.
//  Copyright © 2019 李元元. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var aAlert = false
    
    var body: some View {
        VStack{
//            Text("Alert").tapAction {
//                self.aAlert = true
//                }.presentation($aAlert, alert:{ Alert(title: Text("Alert"))})
            Button(action:buttonClick) {
                Text("点击alert")
                }.presentation($aAlert,alert: {
                    Alert.init(title: Text("showAlert"), message: Text("showMsg"), dismissButton: Alert.Button.default(Text("确定")))
                })
        }
       
        
    }
    
    public func buttonClick(){
        print("点击按钮")
        self.aAlert = true
//        let alertView = Alert.init(title: Text("showAlert"), message: Text("showMsg"), dismissButton: Alert.Button.default(Text("确定")))
//        presentation($aAlert,alert: {
//            Alert(title: Text("Alert"))
//        })
        }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
