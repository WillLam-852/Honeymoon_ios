//
//  ContentView.swift
//  Honeymoon
//
//  Created by Lam Wun Yin on 12/9/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[0])
                .padding()
            
            Spacer()
            
            FooterView()
        }
    }
}

#Preview {
    ContentView()
}
