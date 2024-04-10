//
//  MotionAnimationView.swift
//  Hike
//
//  Created by 신동규 on 4/10/24.
//

import SwiftUI

struct MotionAnimationView: View {
    let size: CGFloat
    @State private var randomCircleCount: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            ForEach((0..<randomCircleCount), id: \.self) { item in
                Circle()
                    .fill(.white)
                    .opacity(0.25)
                    .position(
                        x: CGFloat.random(in: 0...size),
                        y: CGFloat.random(in: 0...size)
                    )
                    .scaleEffect(isAnimating ? CGFloat.random(in: 0.1...2) : 1)
                    .frame(width: CGFloat.random(in: 0...size) / 2)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .speed(Double.random(in: 0.5...1))
                            .delay(.random(in: 0...3))
                            .repeatForever()
                        ) {
                            isAnimating = true
                        }
                    }
            }
        }
        .frame(width: size, height: size)
        /// https://developer.apple.com/documentation/swiftui/view/drawinggroup(opaque:colormode:)
        /// for better performance animation
        .drawingGroup()
    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView(size: 256)
    }
}
