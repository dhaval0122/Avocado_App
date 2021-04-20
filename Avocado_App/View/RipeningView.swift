//
//  RipeningView.swift
//  Avocado_App
//
//  Created by VCS on 20/04/21.
//

import SwiftUI

struct RipeningView: View {
     
     @State private var slideInAnimation:Bool = false
     
     var ripeing:Ripening
     
     var body: some View {
          VStack {
               Image(ripeing.image)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .background(
                         Circle()
                              .fill(Color("ColorGreenLight"))
                              .frame(width: 110, height: 110, alignment: .center)
                    )
                    .background(
                         Circle()
                              .fill(Color("ColorappearanceAdaptive"))
                              .frame(width: 120, height: 120, alignment: .center)
                    )
                    .zIndex(1)
                    .animation(Animation.easeInOut(duration: 1))
                    .offset(y: self.slideInAnimation ? 55 : -55)
               
               VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                    //stage
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                         Text(ripeing.stage)
                              .font(.system(.largeTitle, design: .serif))
                              .fontWeight(.bold)
                         
                         
                         Text("Stage".uppercased())
                              .font(.system(.body, design: .serif))
                              .fontWeight(.heavy)
                    })
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.top,65)
                    .frame(width:180)
                    //title
                    Text(ripeing.title)
                         .font(.system(.title, design: .serif))
                         .fontWeight(.bold)
                         .foregroundColor(Color("ColorGreenMedium"))
                         .padding(.vertical,12)
                         .padding(.horizontal,0)
                         .frame(width:220)
                         .background(
                              RoundedRectangle(cornerRadius: 12)
                                   .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                                   .shadow(color: Color("ColorBlackTransparentLite"), radius: 6, x: 0, y: 6)
                         )
                    Spacer()
                    //description
                    Text(ripeing.description)
                         .foregroundColor(Color("ColorGreenDark"))
                         .fontWeight(.bold)
                         .lineLimit(nil)
                    Spacer()
                    //ripeness
                    Text(ripeing.ripeness.uppercased())
                         .foregroundColor(Color.white)
                         .font(.system(.callout, design: .serif))
                         .fontWeight(.bold)
                         .shadow(radius: 3 )
                         .padding(.vertical)
                         .padding(.horizontal,0)
                         .frame(width:185)
                         .background(
                              RoundedRectangle(cornerRadius: 12)
                                   .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                                   .shadow(color: Color("ColorBlackTransparentLite"), radius: 6, x: 0, y: 6)
                         )
                    //instruction
                    Text(ripeing.instruction)
                         .font(.footnote)
                         .foregroundColor(Color("ColorGreenLight"))
                         .fontWeight(.bold)
                         .lineLimit(3)
                         .frame(width:160)
                    Spacer()
               })
               .zIndex(0)
               .multilineTextAlignment(.center)
               .padding(.horizontal)
               .frame(width: 280, height: 485, alignment: .center)
               .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
               .cornerRadius(20)
          }
          .edgesIgnoringSafeArea(.all)
          .onAppear(perform: {
               self.slideInAnimation.toggle()
          })
     }
}

struct RipeningView_Previews: PreviewProvider {
     static var previews: some View {
          RipeningView(ripeing: ripeningData[1])
     }
}
