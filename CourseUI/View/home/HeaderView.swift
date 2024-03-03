//
//  HeaderView.swift
//  CourseUI
//
//  Created by CW Mayur Tikle on 03/03/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing:300) {
            Image(systemName: "text.alignleft")
                .imageScale(.large)
            .foregroundStyle(.black)
            
            Image(systemName: "bell.badge.fill")
                .imageScale(.large)
            .foregroundStyle(.black)
        }.padding(.bottom)
        
        VStack(alignment:.leading,spacing: 5) {
            Text("Hello,Mayur!")
                .font(.system(size: 22))
            .fontWeight(.semibold)
            .foregroundStyle(LinearGradient(colors: [.teal,.indigo],startPoint: .top, endPoint: .bottom))
            
            Text("What do you wanna learn today?")
                  .font(.system(size: 13))
                  .fontWeight(.regular)
                  .foregroundStyle(.gray)
        }
    }
}

#Preview {
    HeaderView()
}
