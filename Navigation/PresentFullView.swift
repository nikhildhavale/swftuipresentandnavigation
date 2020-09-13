//
//  PresentFullView.swift
//  Navigation
//
//  Created by Nikhil Vivek Dhavale on 13/09/20.
//  Copyright © 2020 Nikhil Vivek Dhavale. All rights reserved.
//

import SwiftUI

struct PresentFullView: View {
    @Binding var isShowing:Bool
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                VStack {
                    
                    HStack {
                        Button(action: {
                            // trigger modal presentation
                            withAnimation {
                                self.isShowing.toggle()
                            }
                            
                        }, label: {
                            Text("Dismiss")
                                .font(.headline)
                                .foregroundColor(.white)
                        })
                        Spacer()
                        
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.white)
                            .onTapGesture {
                                withAnimation {
                                    self.isShowing.toggle()
                                }
                        }
                    }
                    
                    
                        .padding(.top, UIApplication.shared.windows.filter{$0.isKeyWindow}.first?.safeAreaInsets.top)
                    Spacer()
                }
                Spacer()
            }
            
            
            
        }.background(Color.yellow)
    }
}

