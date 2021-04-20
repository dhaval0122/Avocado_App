//
//  DishView.swift
//  Avocado_App
//
//  Created by VCS on 20/04/21.
//

import SwiftUI

struct DishView: View {
     var body: some View {
          HStack(alignment: .center, spacing: 4) {
               VStack(alignment: .leading, spacing: 4) {
                    HStack {
                         Image("icon-toasts")
                              .resizable()
                              .modifier(IconModifire())
                         Spacer()
                         Text("Toasts")
                    }
                    
                    Divider()
                    
                    HStack {
                         Image("icon-tacos")
                              .resizable()
                              .modifier(IconModifire())
                         Spacer()
                         Text("Tacos")
                    }
                    
                    Divider()
                    
                    HStack {
                         Image("icon-salads")
                              .resizable()
                              .modifier(IconModifire())
                         Spacer()
                         Text("Salads")
                    }
                    
                    Divider()
                    
                    HStack {
                         Image("icon-halfavo")
                              .resizable()
                              .modifier(IconModifire())
                         Spacer()
                         Text("Spreds")
                    }
               }
               
               VStack(alignment: .center, spacing: 16) {
                    HStack {
                         Divider()
                    }
                    Image(systemName: "heart.circle")
                         .font(Font.title.weight(.ultraLight))
                         .imageScale(.large)
                    HStack {
                         Divider()
                    }
               }
               VStack(alignment: .trailing, spacing: 4) {
                    HStack {
                         Text("Guacamole")
                         Spacer()
                         Image("icon-guacamole")
                              .resizable()
                              .modifier(IconModifire())
                    }
                    
                    Divider()
                    
                    HStack {
                         Text("Sandwich")
                         Spacer()
                         Image("icon-sandwiches")
                              .resizable()
                              .modifier(IconModifire())
                    }
                    
                    Divider()
                    
                    HStack {
                         Text("Soup")
                         Spacer()
                         Image("icon-soup")
                              .resizable()
                              .modifier(IconModifire())
                    }
                    
                    Divider()
                    
                    HStack {
                         Text("Smoothie")
                         Spacer()
                         Image("icon-smoothies")
                              .resizable()
                              .modifier(IconModifire())
                    }
                    
               }
          }.font(.system(.callout, design: .serif))
          .foregroundColor(.gray)
          .padding(.horizontal)
          .frame(maxHeight:220)
     }
}

struct IconModifire:ViewModifier {
     func body(content: Content) -> some View {
          content.frame(width: 42, height: 42, alignment:   .center)
     }
}

struct DishView_Previews: PreviewProvider {
     static var previews: some View {
          DishView().previewLayout(.sizeThatFits)
     }
}
