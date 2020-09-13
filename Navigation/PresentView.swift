//
//  PresentView.swift
//  Navigation
//
//  Created by Nikhil Vivek Dhavale on 13/09/20.
//  Copyright © 2020 Nikhil Vivek Dhavale. All rights reserved.
//

import SwiftUI

struct PresentView: View {
    @Binding var isShowing:Bool
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: {
                self.isShowing = false
            }, label: {
                Text("Dismiss")
            })
        }
    }
}

