//
//  ContentView.swift
//  FirstProject
//
//  Created by Mohammed Alsaleh on 13/10/1443 AH.
//

import SwiftUI

struct ContentView: View {
    let screenSize = UIScreen.main
    @State var EmailTF     = ""
    @State var PasswordTF  = ""
    var body: some View {
        ZStack {
            // BackGround
            Color("BG2")
            VStack {
            VStack {
                CustomShape()
                    .fill(Color("BG1"))
                    .frame(width: screenSize.bounds.width, height: screenSize.bounds.width)
                    .overlay(
                        Text("UI App")
                            .font(.system(size: 32, weight: .heavy, design: .rounded))
                            .foregroundColor(Color("TextC1"))
                            .offset( y: -30)
                    )
//                Spacer()
            }.ignoresSafeArea()
            VStack {
                Text("Login")
                    .font(.system(size: 32, weight: .heavy, design: .default))
                    .padding(.top ,90)
                    .foregroundColor(Color("TextC1"))
                
                CustomTF(placeholder: "Email", isPassword: false, text: $EmailTF)
                    .padding(.top,50)
                    .padding()
                CustomTF(placeholder: "Password", isPassword: true, text: $PasswordTF)
                    
                    .padding()
                Button {
                    
                } label: {
                    Text("Log in")
                        .font(.system(size: 14,weight: .medium))
                        .foregroundColor(.white)
                        .padding(16)
                        .frame(maxWidth:.infinity)
                        .background(RoundedRectangle(cornerRadius: 4).fill(Color("TextC2")))
                }
                .padding()
                Spacer()
            }.offset(y: -screenSize.bounds.width / 1.7)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: width, y: -0.33867*height))
            path.addLine(to: CGPoint(x: 0, y: -0.33867*height))
            path.addLine(to: CGPoint(x: 0, y: 0.97799*height))
            path.addCurve(to: CGPoint(x: 0.02415*width, y: 0.93959*height), control1: CGPoint(x: 0.00403*width, y: 0.96338*height), control2: CGPoint(x: 0.01234*width, y: 0.95001*height))
            path.addLine(to: CGPoint(x: 0.44221*width, y: 0.57057*height))
            path.addCurve(to: CGPoint(x: 0.55502*width, y: 0.57057*height), control1: CGPoint(x: 0.47409*width, y: 0.54242*height), control2: CGPoint(x: 0.52313*width, y: 0.54242*height))
            path.addLine(to: CGPoint(x: 0.97307*width, y: 0.93959*height))
            path.addCurve(to: CGPoint(x: width, y: 0.99848*height), control1: CGPoint(x: 0.99023*width, y: 0.95474*height), control2: CGPoint(x: width, y: 0.9761*height))
            path.addLine(to: CGPoint(x: width, y: -0.33867*height))
            path.closeSubpath()
            return path
        }
}
