//
//  ContentView.swift
//  Avocado_App
//
//  Created by DEV on 19/04/21.
//

import SwiftUI

struct ContentView: View {
     
     var  headers: [Header] = headerData
     var facts: [Fact] = factData
     var recipie: [Recipe] = recipieData
     
     var body: some View {
          
          ScrollView(.vertical, showsIndicators: false){
               
               VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    // MARK: - Header
                    ScrollView(.horizontal, showsIndicators: false){
                         HStack(alignment: .top, spacing: 0, content: {
                              ForEach(headers) { item in
                                   HeaderView(header: item)
                                   
                              }
                         })
                    }
                    
                    // MARK: - Dishes
                    Text("Avocado Dishes")
                         .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                         .modifier(titleModifire())
                    DishView()
                         .frame(maxWidth:640)
                    
                    // MARK: -  Facts
                    Text("Avocado Dishes")
                         .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                         .modifier(titleModifire())
                    ScrollView(.horizontal, showsIndicators: false, content: {
                         HStack(alignment: .top, spacing: 60, content: {
                              ForEach(facts) { item in
                                   FactsView(fact: item)
                              }
                         })
                         .padding(.vertical)
                         .padding(.leading, 60)
                         .padding(.trailing,20)
                    })
                    
                    // MARK: -  Recipe
                    Text("Avocado Recipe")
                         .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                         .modifier(titleModifire())
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                         ForEach(recipie){ items in
                              RecipeCardView(recipe: items)
                         }
                    })
                    .frame(maxWidth:640)
                    .padding(.horizontal)
                    
                    // MARK: -  Footer
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                         Text("All about Avocados")
                              .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                              .modifier(titleModifire())
                         
                         
                         Text("Everything you wanted to know about avocado but were too afraid to ask.")
                              .font(.system(.body, design: .serif))
                              .multilineTextAlignment(.center)
                              
                              .foregroundColor(Color.gray)
                              .padding(8)
                              .frame(minWidth:60)
                    })
                    .frame(maxWidth:640)
                    .padding()
                    .padding(.bottom,85)
                    
               })
          }
          .edgesIgnoringSafeArea(.all)
          .padding(0)
     }
}

struct titleModifire:ViewModifier {
     func body(content: Content) -> some View {
          content
               .font(.system(.title, design: .serif))
               .foregroundColor(Color("ColorGreenAdaptive"))
               .padding(8)
     }
}

struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
          ContentView()
     }
}
