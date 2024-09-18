//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Lam Wun Yin on 14/9/2024.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    @Binding var showInfoView: Bool 
    @Binding var showGuideView: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Button {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })

            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
        }
        .padding()
    }
}

#Preview {
    @State var showInfo: Bool = false
    @State var showGuide: Bool = false

    return HeaderView(showInfoView: $showInfo, showGuideView: $showGuide)
        .previewLayout(.fixed(width: 375, height: 80))
}
