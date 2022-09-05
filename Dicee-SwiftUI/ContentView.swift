//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by vlad zarya on 5.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceeView(n: 1)
                    DiceeView(n: 1)
                }
                .padding()
                Spacer()
                Button("Roll") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.system(size: 60))
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(33)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceeView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
