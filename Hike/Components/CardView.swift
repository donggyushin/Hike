//
//  CardView.swift
//  Hike
//
//  Created by 신동규 on 4/7/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    
    func randomImage() {
        var randomNumber = Int.random(in: 1...5)
        
        // TODO: What's difference between repeat, while?
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
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
                    CustomCircleView()
                        .frame(width: 256, height: 256)
                    
                    MotionAnimationView(size: 256)
                        .mask(Circle())
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: Footer
                Button {
                    // ACTION: Generate a random number
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.colorGreenLight, .colorGreenMedium],
                                           startPoint: .top,
                                           endPoint: .bottom)
                        )
                        .shadow(color: .black, radius: 0.25)
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
    }
}

#Preview {
    CardView()
}
