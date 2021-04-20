//
//  RecipeDetailView.swift
//  Avocado_App
//
//  Created by VCS on 20/04/21.
//

import SwiftUI

struct RecipeDetailView: View {
     
     var recipe:Recipe
     
     @State private var pulsate:Bool = false
     @Environment(\.presentationMode) var presentation
     
     var body: some View {
          ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
               VStack(alignment:.center, spacing: 0) {
                    Image(recipe.image)
                         .resizable()
                         .scaledToFit()
                    
                    Group{
                         //title
                         Text(recipe.title)
                              .font(.system(.largeTitle, design: .serif))
                              .fontWeight(.bold)
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color("ColorGreenAdaptive"))
                              .padding(.top,10)
                         
                         //rating
                         RecipeRatingView(recipe: recipe)
                         
                         //cooking
                         RecipeCookingView(recipe: recipe)
                         
                         //ingridian
                         Text("Ingredients")
                              .fontWeight(.bold)
                              .modifier(titleModifire())
                         VStack(alignment: .leading, spacing: 5, content: {
                              ForEach(recipe.ingredients,id:\.self) { item in
                                   VStack(alignment: .leading, spacing: 5, content: {
                                        Text(item)
                                             .font(.footnote)
                                             .multilineTextAlignment(.leading)
                                        Divider()
                                   })
                              }
                         })
                         
                         //instruction
                         Text("Instruction")
                              .fontWeight(.bold)
                              .modifier(titleModifire())
                         
                         ForEach(recipe.instructions,id:\.self) { item in
                              VStack(alignment: .center, spacing: 5, content: {
                                   
                                   Image(systemName: "chevron.down.circle")
                                        .resizable()
                                        .frame(width: 42, height: 42, alignment: .center)
                                        .imageScale(.large)
                                        .font(Font.title.weight(.ultraLight))
                                        .foregroundColor(Color("ColorGreenAdaptive"))
                                   
                                   Text(item)
                                        .lineLimit(nil)
                                        .multilineTextAlignment(.leading)
                                        .font(.system(.body, design: .serif))
                                        .frame(minHeight:100)
                                        
                                   
                              })
                         }
                         
                    }
                    .padding(.horizontal,24)
                    .padding(.vertical,12)
               }
          })
          .edgesIgnoringSafeArea(.top)
          .overlay(
               HStack {
                    Spacer()
                    VStack {
                         Button(action: {
                              self.presentation.wrappedValue.dismiss()
                         }, label: {
                              Image(systemName: "chevron.down.circle.fill")
                                   .font(.title)
                                   .foregroundColor(.white)
                                   .shadow(radius: 4)
                                   .opacity(self.pulsate ? 1 : 0.6)
                                   .scaleEffect(self.pulsate ? 1.2 : 0.8,anchor: .center)
                                   .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                         })
                         .padding(.trailing,20)
                         .padding(.top,24)
                         Spacer()
                    }
               }
          )
          .onAppear(){
               self.pulsate.toggle()
          }
          
     }
}

struct RecipeDetailView_Previews: PreviewProvider {
     static var previews: some View {
          RecipeDetailView(recipe: recipieData[0])
     }
}
