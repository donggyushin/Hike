//
//  CardView.swift
//  Hike
//
//  Created by 신동규 on 4/7/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            Circle()
                .fill(
                    LinearGradient(colors: 
                                    [
                                        Color.colorIndigoMedium,
                                        Color.colorSalmonLight
                                    ],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
                .frame(width: 256, height: 256)
            
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
