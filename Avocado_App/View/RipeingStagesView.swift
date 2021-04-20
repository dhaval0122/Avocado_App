//
//  RipeingStagesView.swift
//  Avocado_App
//
//  Created by DEV on 19/04/21.
//

import SwiftUI

struct RipeingStagesView: View {
     
     var ripeningStages:[Ripening] = ripeningData
     
     var body: some View {
          ScrollView(.horizontal, showsIndicators: false, content: {
               VStack {
                    Spacer()
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 25, content: {
                         ForEach(ripeningStages) { item in
                              RipeningView(ripeing: item)
                         }
                    })
                    .padding(.vertical)
                    .padding(.horizontal, 25)
                    Spacer()
               }
          })
          .edgesIgnoringSafeArea(.all)
     }
}

struct RipeingStagesView_Previews: PreviewProvider {
     static var previews: some View {
          RipeingStagesView()
     }
}
