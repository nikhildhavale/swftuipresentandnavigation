//
//  ContentView.swift
//  Navigation
//
//  Created by Nikhil Vivek Dhavale on 13/09/20.
//  Copyright © 2020 Nikhil Vivek Dhavale. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var link = false
    @State var presented = false
    @State var presentedFullScreen = false
    var body: some View {
        ZStack
            {
                NavigationView{
                    VStack
                        {
                            NavigationLink(destination: SecondView{ popNavigation in
                                self.link = false
                            }, isActive: $link) {
                                Text("next")
                            }
                            Text("Hello, World!")
                            Button(action: {
                                self.presented = true
                            }, label: {
                                Text("Present")
                            })
                            Button(action: {
                                withAnimation{
                                    self.presentedFullScreen.toggle()
                                }
                            }, label: {
                                Text("fullscreen")
                            })
                    }
                }
                PresentFullView(isShowing: $presentedFullScreen).background(Color.red).frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                    .offset(x: 0, y: self.presentedFullScreen ? 0 : UIApplication.shared.windows.first?.frame.height ?? 0)
                
                
        }.navigationBarTitle("First").popover(isPresented: $presented, content: {
            PresentView(isShowing: self.$presented)
        })
        
        
        
    }
}

