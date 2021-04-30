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

struct SectionTitle: View {
  let title: String
  
  var body: some View {
    Text(title)
      .font(.headline)
      .fontWeight(.semibold)
      .padding(.vertical)
  }
}

struct CharacterScreen: View {
  @EnvironmentObject var characterSource: CharacterSource

  var body: some View {
    NavigationView {
      List {
        Section(header: SectionTitle(title: "Heroes")) {
          ForEach(characterSource.heroes) {
            hero in
            NavigationLink(destination: EmptyView(), label: {
              CharacterItem(character: hero)
            })
          }
        }
        Section(header: SectionTitle(title: "Villains")) {
          ForEach(characterSource.villains) {
            villain in
            NavigationLink(destination: EmptyView(), label: {
              CharacterItem(character: villain)
            })
          }
        }
      }.navigationTitle("Characters")
    }
  }
}

struct CharacterItem: View {
  var character: Character
  
  var body: some View {
    HStack {
      Image(systemName: "person.circle.fill")
        .imageScale(.large)
      Text(character.name)
        .font(.headline)
      Spacer()
      if character.isFavorite {
        Image(systemName: "star.fill")
          .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
      } else {
        Image(systemName: "star")
          .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
      }
      
//      if character.isFavorite {
//        Button(action: {
//          character.isFavorite = false
//        }) {
//          Image(systemName: "star.fill")
//            .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
//        }
//      } else {
//        Button(action: {
//          character.isFavorite = true
//        }) {
//          Image(systemName: "star")
//            .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
//        }
//      }
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
        let characterSource = CharacterSource()
      ContentView().environmentObject(characterSource)
    }
}


