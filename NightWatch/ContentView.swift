//
//  ContentView.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 12/04/21.
//

import SwiftUI
 
struct ContentView: View {
    var body: some View {
      TabView {
        CharacterScreen().tabItem {
          Image(systemName: "person.circle.fill")
          Text("Characters")
        }
        FavoritesScreen().tabItem {
          Image(systemName: "star.circle.fill")
          Text("Favorites")
        }
      }
    }
}

// MARK: Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      let characterSource = CharacterSource()
      ContentView().environmentObject(characterSource)
    }
}


