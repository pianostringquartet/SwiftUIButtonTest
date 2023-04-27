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
//        .buttonStyle(.borderless)
    }
    
    var body: some View {
        Menu {
            Button(action: { }, label: { Text("Apple") })
                .onHover { isHovering in
                    print("HOVERING: Apple: isHovering: \(isHovering)")
                }
            Button(action: { }, label: { Text("Banana") })
                .onHover { isHovering in
                    print("HOVERING: Banana: isHovering: \(isHovering)")
                }
        } label: {
            // As soon as button is used in SwiftUI Menu on Catalysit with 'Optimized for Mac' setting,
            // we can no longer control the color of the text or arrow.
            button
                .tint(.white)
                .foregroundColor(.white)
                .accentColor(.white)
                .hoverEffect(.highlight)
                .onHover { isHovering in
                    print("HOVERING: main button: isHovering: \(isHovering)")
                }
        }
//        .hoverEffect(.highlight)
//        .onHover { isHovering in
//            print("HOVERING: menu: isHovering: \(isHovering)")
//        }
        .menuStyle(.automatic)
        
//        .menuStyle(.borderlessButton)

//        .background {
//            RoundedRectangle(cornerRadius: 16, style: .circular)
//                .fill(STITCH_PURPLE)
//                .padding()
//                .frame(width: 112, height: 60)
//        }
//        .tint(.black)
    }
}

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            APP_BACKGROUND_COLOR.edgesIgnoringSafeArea(.all)
            ButtonTestView()
        }
        
        
////        NavigationSplitView(columnVisibility: .constant(.detailOnly)) {
//        NavigationSplitView(columnVisibility: .constant(.doubleColumn)) {
//            Text("Sidebar")
////                .navigationSplitViewColumnWidth(5)
//                .navigationSplitViewColumnWidth(0)
//        } detail: {
//            NavigationStack {
//                Text("Detail")
//            }
//            .navigationSplitViewColumnWidth(200)
//        }
//        .navigationSplitViewStyle(.prominentDetail)
//        .navigationViewStyle(.stack)
        
//        NavigationStack {
////            Text("Detail")
//            List {
//                NavigationLink {
//                    Text("Detail 1")
//                } label: {
//                    Text("Go to Detail 1")
//                }
//                NavigationLink {
//                    Text("Detail 2")
//                } label: {
//                    Text("Go to Detail 2")
//                }
//                NavigationLink {
//                    Text("Detail 3")
//                } label: {
//                    Text("Go to Detail 3")
//                }
//
//            }
//            .toolbar {
////                ToolbarItem(placement: .secondaryAction) {
////                    Button(action: { },
////                           label: { Text("Secondary") })
////                }
//
//                ToolbarItemGroup(placement: .navigationBarTrailing) {
//                    Button(action: { },
//                           label: { Text("Love") })
//                }
//            }
//        }
        

        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
