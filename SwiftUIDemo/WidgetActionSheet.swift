//
//  WidgetActionSheet.swift
//  SwiftUIDemo
//
//  Created by 李元元 on 2019/6/10.
//  Copyright © 2019 李元元. All rights reserved.
//

import SwiftUI

struct WidgetActionSheet : View {
    @State var showActionSheet = false
    
    
    
    var body: some View {
        VStack{
             Button.init(action:{
                print("1111111111")
                self.showActionSheet = true
                
                self.body.presentation(self.showActionSheet ? ActionSheet.init(
                    title: Text("ActionSheet标题"),
                    message: Text("ActionSheet摘要"),
                    buttons: [
                        ActionSheet.Button.cancel({self.showActionSheet = false}),
                        ActionSheet.Button.destructive(Text("第一个选项"), onTrigger: {self.showActionSheet = false})
                    ])
                    :nil)
            }, label: {
                    Text("点击弹出ActionSheet")
                }).frame(width: 200, height: 50, alignment: Alignment.center).background(Color.green)
            
            Button.init(action: buttonClick, label: {
                    Text("第二个button")
                }).frame(width: 200, height: 50, alignment: Alignment.center).padding(.init(top: 20, leading: 0, bottom: 0, trailing: 0)).background(Color.red)

            
        }
        
    }
    
    public func buttonClick1() -> Void{
        print("1111111111")
        self.showActionSheet = true
        self.presentation(self.showActionSheet ? ActionSheet.init(
            title: Text("ActionSheet标题"),
            message: Text("ActionSheet摘要"),
            buttons: [
                ActionSheet.Button.cancel({self.showActionSheet = false}),
                ActionSheet.Button.destructive(Text("第一个选项"), onTrigger: {self.showActionSheet = false})
            ])
            :nil)
    }
    
    public func buttonClick() -> Void{
        print("2222222222")
        self.showActionSheet = true
        presentation(self.showActionSheet ? ActionSheet.init(
            title: Text("ActionSheet标题"),
            message: Text("ActionSheet摘要"),
            buttons: [
                      ActionSheet.Button.destructive(Text("第一个选项"), onTrigger: {self.showActionSheet = false}),
                      ActionSheet.Button.destructive(Text("第ER个选项"), onTrigger: {self.showActionSheet = false})
            ])
            :nil)
    }
}

#if DEBUG
struct WidgetActionSheet_Previews : PreviewProvider {
    static var previews: some View {
        WidgetActionSheet()
    }
}
#endif
