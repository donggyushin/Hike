//
//  CustomCircleView.swift
//  Hike
//
//  Created by 신동규 on 4/10/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        Circle()
            .fill(
                LinearGradient(colors:
                                [
                                    Color.colorIndigoMedium,
                                    Color.colorSalmonLight
                                ],
                               startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                               endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing)
            )
            .onAppear {
                withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                    isAnimateGradient.toggle()
                }
            }
    }
}

#Preview {
    CustomCircleView()
}
