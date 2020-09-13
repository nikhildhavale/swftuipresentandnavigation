//
//  SecondView.swift
//  Navigation
//
//  Created by Nikhil Vivek Dhavale on 13/09/20.
//  Copyright © 2020 Nikhil Vivek Dhavale. All rights reserved.
//

import Foundation
import SwiftUI
struct SecondView:View {
    let popNavigation:(Bool) -> ()

    var body: some View {
        VStack
            {
                Text("Hello, World!")
                Button(action: {
                    self.popNavigation(true)
                }, label: {
                    Text("Back")
                    })
        }

    }
    
}
