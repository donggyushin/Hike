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
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                ListRowView(label: "Application", value: "Hike", icon: .init(systemName: "apps.iphone", backgroundColor: .blue))
                
                ListRowView(label: "Compatability", value: "iOS, iPadOS", icon: .init(systemName: "info.circle", backgroundColor: .red))
                
                ListRowView(label: "Technology", value: "Swift", icon: .init(systemName: "swift", backgroundColor: .orange))
                
                ListRowView(label: "Version", value: "1.0", icon: .init(systemName: "gear", backgroundColor: .purple))
                
                ListRowView(label: "Developer", value: "DG", icon: .init(systemName: "ellipsis.curlybraces", backgroundColor: .mint))
                
                ListRowView(label: "Designer", value: "DG", icon: .init(systemName: "paintpalette", backgroundColor: .pink))
                
                ListRowView(label: "Website", value: "github", icon: .init(systemName: "globe", backgroundColor: .indigo), linkDestination: "https://github.com/donggyushin")
            }
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
