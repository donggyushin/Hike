//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by 신동규 on 4/7/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: Depth
            RoundedRectangle(cornerRadius: 40)
                .fill(
                    .colorGreenDark
                )
                .offset(y: 12)
            
            // MARK: Light
            RoundedRectangle(cornerRadius: 40)
                .fill(
                    .colorGreenLight
                )
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: Surface
            RoundedRectangle(cornerRadius: 40)
                .fill(
                    LinearGradient(
                        colors: [
                            .colorGreenLight,
                            .colorGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom)
                )
        }
    }
}

#Preview {
    CustomBackgroundView().padding()
}
