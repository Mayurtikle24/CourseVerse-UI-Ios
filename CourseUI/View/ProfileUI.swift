//
//  ProfileUI.swift
//  CourseUI
//
//  Created by CW Mayur Tikle on 06/03/24.
//

import SwiftUI

struct ProfileUI: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack(spacing:300) {
                    Image(systemName: "arrow.left")
                        .imageScale(.large)
                    .foregroundStyle(.black)
                    
                    Image(systemName: "heart")
                        .imageScale(.large)
                    .foregroundStyle(.black)
                }.padding(.bottom)
                
                VStack{
                    ZStack {
                        
                        VStack{
                        Text("Adam F. Goldberg").font(.title3).fontWeight(.bold).padding(.top,20)
                        
                        HStack(alignment:.center){
                            Text("@adm.f.goldberg").font(.footnote).foregroundColor(.gray).fontWeight(.medium)
                            
                            Circle().frame(width: 7, height: 7).foregroundColor(.gray)
                            
                            Text("Pennsylvania, US").font(.footnote).foregroundColor(.gray).fontWeight(.medium)
                        }
                        }.frame(width: 350,height: 160).background(Color.gray.opacity(0.1)).cornerRadius(10)
                      
                            Image("profileImage")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle()).frame(width: 110,height: 110).padding(.bottom,180)
                                
                        
                    }.padding(.top)
                    
                  
                }.frame(width: 350,height: 240)
                
                PopularCourseListUI(headerListTitle: "Top Courses of Adam", subjectList: ["All","Businees","Treading","Design"]).padding([.leading,.trailing])
            }
            
           
        }
    }
}

#Preview {
    ProfileUI()
}
