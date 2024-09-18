//
//  FooterView.swift
//  Honeymoon
//
//  Created by Lam Wun Yin on 14/9/2024.
//

import SwiftUI

struct FooterView: View {
    // MARK: - Properties
    @Binding var showBookingAlert: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()
            } label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            }

            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        }
        .padding()
    }
}

#Preview {
    @State var showAlert: Bool = false
    
    return FooterView(showBookingAlert: $showAlert)
        .previewLayout(.fixed(width: 375, height: 80))
}
