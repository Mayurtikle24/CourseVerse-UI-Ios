//
//  HomePage.swift
//  CourseUI
//
//  Created by CW Mayur Tikle on 03/03/24.
//

import SwiftUI

struct HomePage: View {
    @State var selectedSubject = "All"
    var body: some View {
        let subjectList:[String] = ["All","Businees","Treading","Design"]
        
        ScrollView {
            VStack(alignment:.leading) {
                HeaderView()
                BannerView()
                
                
                
                VStack {
                    HStack(){
                        Text("Subjects")
                            .font(.subheadline).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text("See all")
                            .font(.caption2).foregroundColor(.gray).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }.padding()
                    
                    ScrollView(.horizontal,showsIndicators:false){
                        HStack{
                            ForEach(subjectList,id: \.self){item in
                                Button{
                                    selectedSubject = item
                                }label: {
                                    
                                    Text(item).font(.footnote).fontWeight(.semibold)
                                    
                                }.padding()
                                    .background(selectedSubject == item ? .black: .gray.opacity(0.1))
                                    .foregroundColor(selectedSubject != item ?.black:.white)
                                    .clipShape(Capsule())
                                
                            }
                        }
                    }.padding(.horizontal)
                }
                
              
                PopularCourseListUI(headerListTitle: "Popula Courses",subjectList:["All","Businees","Treading","Design"]);
                
                
            }
            .padding()
        }
        
        Spacer()
    }
}

#Preview {
    HomePage()
}
