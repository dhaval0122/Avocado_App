//
//  HeaderView.swift
//  Avocado_App
//
//  Created by DEV on 19/04/21.
//

import SwiftUI

struct HeaderView: View {
     
     let header: Header
     
     @State private var showHeadline:Bool = false
     
     var slideInAnimation: Animation{
          Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
               .speed(1)
               .delay(0.25)
     }
     
     var body: some View {
          ZStack {
               Image(header.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
               HStack(alignment: .top, spacing: 0, content: {
                    
                    Rectangle()
                         .fill(Color("ColorGreenLight"))
                         .frame(width:4)
                    
                    VStack(alignment: .leading, spacing: 0) {
                         Text(header.headline)
                              .font(.system(.title, design: .serif))
                              .fontWeight(.bold)
                              .foregroundColor(.white)
                              .shadow(radius: 3)
                         
                         Text(header.subheadline)
                              .font(.footnote)
                              .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                              .multilineTextAlignment(.leading)
                              .foregroundColor(.white)
                              .shadow(radius: 3 )
                    }
                    .padding(.vertical,0)
                    .padding(.horizontal,20)
                    .frame(width: 281, height: 105)
                    .background(Color("ColorBlackTransparentLite"))
               })
               .frame(width: 285, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               .offset(x:-76, y: showHeadline ? 75 : 220)
               .animation(slideInAnimation)
               .onAppear(perform: {
                    showHeadline.toggle()
               })
          }
          .frame(width: 480, height: 320, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
     }
}

struct HeaderView_Previews: PreviewProvider {
     static var previews: some View {
          HeaderView(header: headerData[0])
               .previewLayout(.sizeThatFits)
               .environment(\.colorScheme, .light)
          
     }
}
