//
//  ListRowView.swift
//  Hike
//
//  Created by 신동규 on 4/13/24.
//

import SwiftUI

struct ListRowView: View {
    
    struct Icon {
        let systemName: String
        let backgroundColor: Color
    }
    
    @State var label: String
    @State var value: String
    @State var icon: Icon
    @State var linkDestination: String? = nil
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: 30)
                    .foregroundStyle(icon.backgroundColor)
                
                Image(systemName: icon.systemName)
                    .fontWeight(.semibold)
            }
            
            Text(label)
            
            Spacer()
            
            if let linkDestination, let url = URL(string: linkDestination) {
                Link(destination: url, label: {
                    Text(value)
                        .foregroundStyle(.link)
                        .fontWeight(.heavy)
                })
            } else {
                Text(value)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            }
        }
    }
}

#Preview {
    ListRowView(label: "Application", value: "Hike", icon: .init(systemName: "apps.iphone", backgroundColor: .blue))
        .preferredColorScheme(.dark)
}
