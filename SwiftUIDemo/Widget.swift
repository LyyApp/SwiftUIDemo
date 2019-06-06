//
//  Widget.swift
//  SwiftUIDemo
//
//  Created by 李元元 on 2019/6/5.
//  Copyright © 2019 李元元. All rights reserved.
//

import SwiftUI

struct Widget : View {
    var body: some View {
        VStack{
           Text("哈哈哈")
            Text("哈哈哈").font(Font.fontWithSize(fontSize: 20, bold: true))
            Text("哈哈哈").font(Font.fontWithSize(fontSize: 20, bold: false))
        }
        
    }
}

#if DEBUG
struct Widget_Previews : PreviewProvider {
    static var previews: some View {
        Widget()
    }
}
#endif
