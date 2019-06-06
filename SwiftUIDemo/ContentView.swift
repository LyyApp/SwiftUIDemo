//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 李元元 on 2019/6/4.
//  Copyright © 2019 李元元. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Button(action: buttonClick) {
            Text("点击alert")
        }
        
    }
    
    public func buttonClick(){
        print("点击按钮")
        let alertView = Alert.init(title: Text("showAlert"), message: Text("showMsg"), dismissButton: Alert.Button.default(Text("确定")))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
