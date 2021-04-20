//
//  FactsView.swift
//  Avocado_App
//
//  Created by VCS on 20/04/21.
//

import SwiftUI

struct FactsView: View {
     
     let fact:Fact
     
     var body: some View {
          ZStack {
               Text(fact.content)
                    .padding(.leading,55)
                    .padding(.trailing,10)
                    .padding(.vertical,3)
                    .frame(width: 300, height: 135, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(12)
                    .lineLimit(6)
                    .multilineTextAlignment(.leading)
                    .font(.footnote)
                    .foregroundColor(.white)
               
               Image(fact.image)
                    .resizable()
                    .frame(width: 66, height: 66, alignment: .center)
                    .clipShape(Circle())
                    .background(
                         Circle()
                              .fill(Color.white)
                              .frame(width: 74, height: 74, alignment: .center)
                    )
                    .background(
                         Circle()
                              .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                              .frame(width: 82, height: 82, alignment: .center)
                    )
                    .background(
                         Circle()
                              .fill(Color("ColorappearanceAdaptive"))
                              .frame(width: 90, height: 90, alignment: .center)
                    )
                    .offset(x: -150, y: 0)
          }
     }
}

struct FactsView_Previews: PreviewProvider {
     static var previews: some View {
          FactsView(fact: factData[0])
               .previewLayout(.fixed(width: 400, height: 220))
     }
}
