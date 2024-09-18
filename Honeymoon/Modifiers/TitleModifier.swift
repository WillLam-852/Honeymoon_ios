//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Lam Wun Yin on 16/9/2024.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(Color.pink)
    }
}
