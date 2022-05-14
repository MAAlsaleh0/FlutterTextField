//
//  CustomTF.swift
//  FirstProject
//
//  Created by Mohammed Alsaleh on 13/10/1443 AH.
//

import SwiftUI

struct CustomTF: View {
    @State       var placeholder        : String
    @State       var isPassword         : Bool
    @Binding     var text               : String
    @FocusState  var isFocused          : Bool
    var body: some View {
        withAnimation(.linear) {
            VStack{
                ZStack {
                    Text(placeholder)
                        .fontWeight((self.isFocused || self.text != "") ? .semibold : .regular)
                        .foregroundColor(Color((self.isFocused || self.text != "") ?  UIColor(named: "TextC1")! : UIColor.placeholderText))
                        .offset(x: (self.isFocused || self.text != "") ? 5 : 0,y: (self.isFocused || self.text != "") ? -25 : 0)
                        .frame(maxWidth:.infinity , alignment: .leading)
                    if isPassword {
                        SecureField("", text: $text)
                            .focused($isFocused)
                            .foregroundColor(Color("TextC1").opacity(0.8))
                    } else {
                        TextField("", text: $text)
                            .focused($isFocused)
                            .foregroundColor(Color("TextC1").opacity(0.8))
                    }
                    
                }
                Rectangle()
                    .foregroundColor(Color((self.isFocused || self.text != "") ?  UIColor(named: "TextC1")! : UIColor.placeholderText))
                    .frame(height:1.5)
            }.animation(.easeInOut)
        }
    }
}

//struct CustomTF_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTF()
//    }
//}
