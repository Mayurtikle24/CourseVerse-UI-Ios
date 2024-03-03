//
//  BannerView.swift
//  CourseUI
//
//  Created by CW Mayur Tikle on 03/03/24.
//

import SwiftUI

struct BannerView: View {
    
    var body: some View {
        
        ZStack(alignment:.trailing) {
            
            VStack(alignment:.leading){
                
                Text("7 Days Free Trial")
                    .font(.headline)
                .fontWeight(.semibold)
                
          
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt")
                    .multilineTextAlignment(.leading)
                    .font(.footnote)
                    .foregroundColor(.gray)
                   
                
          
                
                Button("Join") {
                    
                }
                .frame(width: 70,height: 30)
              
                       .background(.black).clipShape(Capsule()).foregroundColor(.white).font(.caption).padding(.top)
                
            } .frame(width:.infinity,height: 130)
                .padding(EdgeInsets(top: 10, leading:30, bottom: 10, trailing: 10))
                .background(Color("cardColor"))
                .cornerRadius(10)
              .padding(.top)
            
       
            
            Image("girl")
                .resizable()
                .scaledToFit()
                .frame(width: 180,height: 170)
          
        }
            
      
    }
  
    
}

#Preview {
    BannerView()
}
