//
//  PopularCourseListUI.swift
//  CourseUI
//
//  Created by CW Mayur Tikle on 06/03/24.
//

import SwiftUI

struct PopularCourseListUI: View {
    
    var headerListTitle: String
    var subjectList:[String];
    
    init(headerListTitle: String, subjectList: [String]) {
        self.headerListTitle = headerListTitle
        self.subjectList = subjectList
    }
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack(){
                Text(headerListTitle)
                    .font(.subheadline).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("See all")
                    .font(.caption2).foregroundColor(.gray).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }.padding(.top,10)
            
            ScrollView(.horizontal,showsIndicators:false){
                HStack{
                    ForEach(subjectList,id: \.self){item in
                        
                        VStack(alignment:.leading){
                            Spacer()
                            Image(systemName: "person.and.background.striped.horizontal")
                                .scaleEffect(1.6)
                            
                            Spacer()
                            
                            Text("Social Marketing")
                                .font(.subheadline).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            HStack {
                               Image(systemName: "clock")
                                    .foregroundColor(.black.opacity(0.6)).frame(width:20,height:20)
                                Text("3h 50min")
                                    .font(.caption).foregroundColor(.black.opacity(0.6))
                            }
                            
                            HStack {
                               Image(systemName: "play.rectangle.on.rectangle.fill")
                                    .foregroundColor(.black.opacity(0.6)).frame(width:20,height:20)
                                Text("22 Lessons")
                                    .font(.caption).foregroundColor(.black.opacity(0.6))
                            }
                            
                            Spacer()
                            
                        }.frame(width: 180, height: 160).background(Color("cardColor")).cornerRadius(20)
                            .padding(.trailing)
                      
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    PopularCourseListUI(headerListTitle: "Top Courses of Adam", subjectList: ["All","Businees","Treading","Design"])
}
