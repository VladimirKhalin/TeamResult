//
//  StartView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 22.08.2023.
//

import SwiftUI

struct StartView: View {
    @ObservedObject var router = TabRouter()
    @ObservedObject var variables = Variables()
    
    var body: some View {
        TabView(selection: $router.screen ) {
            
            SettingsView(variables: variables)
                .tag(Screen.one)
                .environmentObject(router)
            
            ContentView(variables: variables)
                .tag(Screen.two)
                .environmentObject(router)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(variables: Variables())
    }
}
