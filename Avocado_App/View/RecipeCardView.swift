//
//  RecipeCardView.swift
//  Avocado_App
//
//  Created by VCS on 20/04/21.
//

import SwiftUI

struct RecipeCardView: View {
     
     var recipe:Recipe
     var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
     @State private var showModel:Bool = false
     
     var body: some View {
          VStack(alignment: .leading, spacing: 0) {
               Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .overlay(
                         HStack {
                              Spacer()
                              VStack {
                                   Image(systemName: "bookmark")
                                        .font(Font.title.weight(.light))
                                        .foregroundColor(.white)
                                        .imageScale(.large)
                                        .shadow(color: Color("ColorBlackTransparentLite"), radius: 2, x: 0, y: 0)
                                        .padding(.trailing, 20)
                                        .padding(.top, 22)
                                   
                                   Spacer()
                              }
                         }
                    )
               
               VStack(alignment: .leading, spacing: 12, content: {
                    // Mark: - title
                    Text(recipe.title)
                         .font(.system(.title, design: .serif))
                         .fontWeight(.bold)
                         .foregroundColor(Color("ColorGreenMedium"))
                         .lineLimit(1)
                    //headline
                    Text(recipe.headline)
                         .font(.system(.body, design: .serif))
                         .foregroundColor(Color.gray)
                         .italic()
                    
                    //rating
                    RecipeRatingView(recipe: recipe)
                    
                    //cooking
                    RecipeCookingView(recipe: recipe)
               })
               .padding()
               .padding(.bottom,12)
               
               
          }
          .background(Color.white)
          .cornerRadius(12)
          .shadow(color: Color("ColorBlackTransparentLite"), radius: 8, x: 0, y: 0)
          .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
               self.hapticImpact.impactOccurred()
               self.showModel = true
          })
          .sheet(isPresented: self.$showModel, content: {
               RecipeDetailView(recipe: self.recipe)
          })
     }
}

struct RecipeCardView_Previews: PreviewProvider {
     static var previews: some View {
          RecipeCardView(recipe: recipieData[0]).previewLayout(.sizeThatFits)
     }
}
