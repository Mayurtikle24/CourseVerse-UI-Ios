//
//  ContentView.swift
//  CourseUI
//
//  Created by CW Mayur Tikle on 03/03/24.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        
        TabView{
            
            VStack {
                HomePage()
              
            }      .tabItem {
                Image(systemName: "house")
                Text("Home")
        }
            
            VStack{
                
                Text("Cart")
                
            } .tabItem {
                Image(systemName: "cart")
                Text("Cart")
            }
         
            
            VStack{
                
                Text("Profile")
                
            } .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }.accentColor(.black)
            
    }
}

#Preview {
    ContentView()
}
