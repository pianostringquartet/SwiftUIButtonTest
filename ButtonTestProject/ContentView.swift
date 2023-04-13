//
//  ContentView.swift
//  ButtonTestProject
//
//  Created by Christian J Clampitt on 4/11/23.
//

import SwiftUI

let STITCH_PURPLE = Color(uiColor: UIColor(red: 0.639, green: 0.537, blue: 0.929, alpha: 1))
let APP_BACKGROUND_COLOR = Color(uiColor: UIColor(red: 0.122, green: 0.129, blue: 0.157, alpha: 1))

struct ButtonTestView: View {
    
    @State var showCover = false
    
    var button: some View {
        Button(action: {},
               label: {
            Text("Options")
                .tint(.white)
                .foregroundColor(.white)
                .font(.init(.headline))
                .accentColor(.white)
            
        })
        
//        .buttonStyle(.borderedProminent)
        .buttonStyle(.borderless)
        .tint(.white)
        .accentColor(.white)
//        .buttonBorderShape(.capsule)
//        .foregroundColor(.green)
//        .tint(.indigo)
        
//        Text("Options")
//            .padding(16)
//            .background(Color.cyan)
//            .foregroundColor(.white)
//            .cornerRadius(32)
//            .tint(.white)
    }
    
    var body: some View {
        Menu {
            Button(action: { }, label: { Text("Apple") })
            Button(action: { }, label: { Text("Banana") })
        } label: {
            // As soon as button is used in SwiftUI Menu on Catalysit with 'Optimized for Mac' setting,
            // we can no longer control the color of the text or arrow.
            button
                .tint(.white)
                .foregroundColor(.white)
                .accentColor(.white)
        }
//        .labelStyle(.titleOnly)
//        .labelStyle(.iconOnly)
//        .labelStyle(.titleAndIcon)
        
        
        
        //        .menuStyle(.button)
            .menuStyle(.borderlessButton)
        //        .menuStyle(.automatic)
        
//            .menuIndicator(.hidden)
        
            .background {
                RoundedRectangle(cornerRadius: 16, style: .circular)
//                    .fill(.green)
                    .fill(STITCH_PURPLE)
                    .padding()
                    .frame(width: 100, height: 60)
                    
            }
            .foregroundColor(.white)
            .tint(.white)
            .accentColor(.white)
    }
}

struct ContentView: View {
    var body: some View {
        
        ZStack {
            APP_BACKGROUND_COLOR.edgesIgnoringSafeArea(.all)
            ButtonTestView()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
