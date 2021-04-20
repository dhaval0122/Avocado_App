//
//  SettingsView.swift
//  Avocado_App
//
//  Created by DEV on 19/04/21.
//

import SwiftUI

struct SettingsView: View {
     
     @State private var enableNotification: Bool = true
     @State private var backgroundRefresh: Bool = false
     
     var body: some View {
          
          VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
               VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    
                    Image("avocado")
                         .resizable()
                         .scaledToFit()
                         .padding(.top)
                         .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                         .shadow(color: Color("ColorBlackTransparentLite"), radius: 8, x: 0, y: 4)
                    
                    Text("Avocados".uppercased())
                         .font(.system(.title,design:.serif))
                         .fontWeight(.bold)
                         .foregroundColor(Color("ColorGreenAdaptive"))
               })
               .padding()
               
               Form{
                    // section 1
                    Section(header: Text("General Settings"), content: {
                         Toggle("Enable Notification", isOn: $enableNotification)
                         
                         Toggle("Background refresh", isOn: $backgroundRefresh)
                    })
                    
                    // section 2
                    
                    Section(header: Text("Application"), content: {
                         if enableNotification {
                              HStack {
                                Text("Product").foregroundColor(Color.gray)
                                Spacer()
                                Text("Avocado Recipes")
                              }
                              
                              HStack {
                                Text("Compatibility").foregroundColor(Color.gray)
                                Spacer()
                                Text("iPhone & iPad")
                              }
                              HStack {
                                Text("Developer").foregroundColor(Color.gray)
                                Spacer()
                                Text("Dhaval Sodha Parmar")
                              }
                              HStack {
                                Text("Designer").foregroundColor(Color.gray)
                                Spacer()
                                Text("Robert Petras")
                              }
                              HStack {
                                Text("Website").foregroundColor(Color.gray)
                                Spacer()
                                Text("https://stackoverflow.com/users/1168654/dhaval-parmar")
                              }
                              HStack {
                                Text("Version").foregroundColor(Color.gray)
                                Spacer()
                                Text("1.0.0")
                              }
                         } else {
                              HStack {
                                Text("Personal message").foregroundColor(Color.gray)
                                Spacer()
                                Text("Happy Coding!")
                              }
                         }
                         
                    })
               }
          }
          .frame(maxWidth:640)
          
          
     }
}

struct SettingsView_Previews: PreviewProvider {
     static var previews: some View {
          SettingsView()
     }
}
