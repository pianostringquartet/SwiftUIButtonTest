//
//  ContentView.swift
//  ButtonTestProject
//
//  Created by Christian J Clampitt on 4/11/23.
//

import SwiftUI

struct ButtonTestView: View {
    
    @State var showCover = false
    
    var button: some View {
        //        Button(action: {},
        //               label: { Text("Options") })
        
        //                        .buttonStyle(.borderedProminent)
        //        .buttonStyle(.borderless)
        
        //                        .buttonBorderShape(.capsule)
        //                        .foregroundColor(.green)
        //                        .tint(.indigo)
        
        Text("Options")
            .padding(16)
            .background(Color.cyan)
            .foregroundColor(.white)
            .cornerRadius(32)
            .tint(.white)
    }
    
    var body: some View {
        let menu = Menu {
            Button(action: { }, label: { Text("Apple") })
            Button(action: { }, label: { Text("Banana") })
        } label: {
            // As soon as button is used in SwiftUI Menu on Catalysit with 'Optimized for Mac' setting,
            // we can no longer control the color of the text or arrow.
            button
                .tint(.white)
        }
        //        .menuStyle(.button)
            .menuStyle(.borderlessButton)
        //        .menuStyle(.automatic)
        
            .background {
                RoundedRectangle(cornerRadius: 16, style: .circular)
                    .fill(.green)
                    .padding()
                    .frame(width: 100, height: 60)
            }
            .foregroundColor(.white)
    }
}

struct ContentView: View {
    var body: some View {
        ButtonTestView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
