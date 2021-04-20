//
//  RecipeCookingView.swift
//  Avocado_App
//
//  Created by VCS on 20/04/21.
//

import SwiftUI

struct RecipeCookingView: View {
     
     var recipe:Recipe
     
    var body: some View {
     HStack(alignment: .center, spacing: 12, content: {
          
          HStack(alignment: .center, spacing: 2, content: {
               Image(systemName: "person.2")
               Text("Serves:\(recipe.serves)")
          })
          
          HStack(alignment: .center, spacing: 2, content: {
               Image(systemName: "clock")
               Text("Prep:\(recipe.preparation)")
          })
          
          HStack(alignment: .center, spacing: 2, content: {
               Image(systemName: "flame")
               Text("Cooking:\(recipe.cooking)")
          })
     })
     .font(.footnote)
     .foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
     RecipeCookingView(recipe: recipieData[0])
          .previewLayout(.fixed(width: 320, height: 60))
    }
}
