//
//  AppView.swift
//  Avocados
//
//  Created by MahDi SaeDi on 4/17/21.
//

import SwiftUI

struct AppView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        TabView{
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }//:TABVIEW
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}
// MARK: - PREVIEW
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
