//
//  AppsView.swift
//  Avocado_App
//
//  Created by DEV on 19/04/21.
//

import SwiftUI

struct AppsView: View {
     var body: some View {
          TabView{
               AvocadosView().tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
               }
               ContentView().tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
               }
               RipeingStagesView().tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
               }
               SettingsView().tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
               }
          }
          .edgesIgnoringSafeArea(.top)
          .accentColor(Color.primary)
     }
}

struct AppsView_Previews: PreviewProvider {
     static var previews: some View {
          AppsView()
     }
}
