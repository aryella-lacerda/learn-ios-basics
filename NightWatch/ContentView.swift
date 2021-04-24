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

// MARK: Character Screen

struct CharacterScreen: View {
  @State private var hero = Character(name: "Iron Man", isFavorite: true)
  
  var body: some View {
    NavigationView {
      List {
        CharacterItem(hero: self.$hero)
      }.navigationTitle("Characters")
    }
  }
}

struct CharacterItem: View {
  @Binding var hero: Character
  
  var body: some View {
    HStack {
      Image(systemName: "person.circle.fill")
        .imageScale(.large)
      Text(hero.name)
        .font(.headline)
      Spacer()
      if hero.isFavorite {
        Button(action: {
          hero.isFavorite = false
        }) {
          Image(systemName: "star.fill")
            .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
        }
      } else {
        Button(action: {
          hero.isFavorite = true
        }) {
          Image(systemName: "star")
            .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
        }
      }
    }
  }
}

// MARK: Favorites Screen

struct FavoritesScreen: View {
  var body: some View {
    Text("Favorites")
  }
}

// MARK: Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

