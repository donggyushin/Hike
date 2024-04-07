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
            VStack {
                // MARK: Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.largeTitle)
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .colorGrayLight,
                                    .colorGrayMedium
                                ],
                                               startPoint: .top,
                                               endPoint: .bottom)
                        )
                        Spacer()
                        Button {
                            print("The button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for frineds and family")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(.colorGrayMedium)
                }
                .padding(.horizontal, 30)
                
                
                // MARK: Main
                ZStack {
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
                
                // MARK: Footer
            }
        }
    }
}

#Preview {
    CardView()
}
