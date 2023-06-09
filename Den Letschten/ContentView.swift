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
            
            
            LeaderBoard()
                .tabItem {
                    Image(systemName: "clipboard")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "wineglass")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
