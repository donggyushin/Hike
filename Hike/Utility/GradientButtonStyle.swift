//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by 신동규 on 4/7/24.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        configuration.isPressed ? LinearGradient(colors: [.colorGrayMedium, .colorGrayLight],
                                                                 startPoint: .top,
                                                                 endPoint: .bottom) :
                            LinearGradient(colors: [.colorGrayLight, .colorGrayMedium],
                                           startPoint: .top,
                                           endPoint: .bottom)
                    )
            )
    }
}
