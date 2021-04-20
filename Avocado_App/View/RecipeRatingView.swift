//
//  RecipeRatingView.swift
//  Avocado_App
//
//  Created by VCS on 20/04/21.
//

import SwiftUI

struct RecipeRatingView: View {
     
     var recipe:Recipe
     
    var body: some View {
        
     //rate
     HStack(alignment: .center, spacing: 5, content: {
          ForEach(1...(recipe.rating), id:\.self) { _ in
               Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
          }
     })
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
     RecipeRatingView(recipe: recipieData[0])
          .previewLayout(.fixed(width: 320, height: 60))
    }
}
