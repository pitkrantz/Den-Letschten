//
//  ContentView.swift
//  Den Letschten
//
//  Created by Pit Krantz on 08/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            AddDrinks()
                .tabItem {
                    Image(systemName: "wineglass")
                }
            
            LeaderBoard()
                .tabItem {
                    Image(systemName: "list.bullet.clipboard.fill")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
