//
//  CustomButtonView.swift
//  Hike
//
//  Created by 신동규 on 4/7/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        Image(systemName: "figure.hiking")
            .fontWeight(.black)
            .font(.title)
            .foregroundStyle(
                LinearGradient(colors: [.colorGrayLight, .colorGrayMedium],
                           startPoint: .top,
                           endPoint: .bottom)
            )
            .padding()
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [.colorGreenLight, .colorGreenMedium],
                                       startPoint: .top,
                                       endPoint: .bottom)
                    )
                    .stroke(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium],
                                           startPoint: .top,
                                           endPoint: .bottom),
                            lineWidth: 4)
            )
    }
}

#Preview {
    CustomButtonView()
}
