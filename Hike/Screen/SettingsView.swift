//
//  SettingsView.swift
//  Hike
//
//  Created by 신동규 on 4/13/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - Header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.largeTitle)
                        .fontWeight(.black)
                    
                    VStack {
                        Text("Hike")
                            .font(.largeTitle)
                            .fontWeight(.black)
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.largeTitle)
                        .fontWeight(.black)
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.colorGreenLight, .colorGreenMedium, .colorGreenDark], startPoint: .top, endPoint: .bottom)
                )
                
                VStack(spacing: 8) {
                    Text("Where can you find\nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text(
                    """
                    The hike which looks gorgeous in photos but is even better once you are actually there.The hike that you hope to do again someday.
                    Find the best day hikes in the app.
                    """)
                    .font(.footnote)
                    .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                
            }
            .listRowSeparator(.hidden)
            
            
            // MARK: - Icons
            
            // MARK: - About
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
