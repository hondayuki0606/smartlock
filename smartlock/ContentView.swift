//
//  ContentView.swift
//  smartlock
//
//  Created by 本田尚行 on 2019/11/30.
//  Copyright © 2019 本田尚行. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        Image("IconA")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)

    }
    
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
