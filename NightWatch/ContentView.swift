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

let heroes = [
  Character(name: "Iron Man", isFavorite: true),
  Character(name: "Dr. Strange", isFavorite: false),
  Character(name: "Hawkeye", isFavorite: false),
  Character(name: "Black Widow", isFavorite: false),
  Character(name: "Captain America", isFavorite: false),
  Character(name: "Thor", isFavorite: false),
]

struct CharacterScreen: View {
  var body: some View {
    NavigationView {
      List {
        ForEach(heroes, id: \.name) {
          hero in CharacterItem(
            name: hero.name,
            isFavorite: hero.isFavorite
          )
        }
      }.navigationTitle("Characters")
    }
  }
}

struct CharacterItem: View {
  let name: String
  let isFavorite: Bool
  
  var body: some View {
    HStack {
      Image(systemName: "person.circle.fill")
        .imageScale(.large)
      Text(name)
        .font(.headline)
      Spacer()
      if isFavorite {
        Image(systemName: "star.fill")
          .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
      } else {
        Image(systemName: "star")
          .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
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

