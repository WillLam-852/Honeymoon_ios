//
//  HeaderComponent.swift
//  Honeymoon
//
//  Created by Lam Wun Yin on 14/9/2024.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundStyle(Color.secondary)
                .opacity(0.2)
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }
    }
}

#Preview {
    HeaderComponent()
        .previewLayout(.fixed(width: 375, height: 128))
}
