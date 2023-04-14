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
               label: { Text("Options") })
        .buttonStyle(.borderless)
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
        .menuStyle(.borderlessButton)

        .background {
            RoundedRectangle(cornerRadius: 16, style: .circular)
                .fill(STITCH_PURPLE)
                .padding()
                .frame(width: 112, height: 60)
        }
        .tint(.black)
    }
}

struct ContentView: View {
    var body: some View {
        
//        NavigationSplitView(columnVisibility: .constant(.detailOnly)) {
        NavigationSplitView(columnVisibility: .constant(.doubleColumn)) {
            Text("Sidebar")
//                .navigationSplitViewColumnWidth(5)
                .navigationSplitViewColumnWidth(0)
        } detail: {
            NavigationStack {
                Text("Detail")
            }
            .navigationSplitViewColumnWidth(200)
        }
        .navigationSplitViewStyle(.prominentDetail)
        .navigationViewStyle(.stack)
        
        

//
//        ZStack {
//            APP_BACKGROUND_COLOR.edgesIgnoringSafeArea(.all)
//            ButtonTestView()
//        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
