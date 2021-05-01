//
//  CharacterScreen.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 30/04/21.
//

import SwiftUI

struct CharacterScreen: View {
  @EnvironmentObject var characterSource: CharacterSource

  var body: some View {
    NavigationView {
      List {
        Section(header: SectionTitle(title: "Heroes")) {
          
          let heroes = characterSource.heroes
          let indexes = characterSource.heroes.indices
          let pairs = Array(zip(heroes, indexes))
          
          ForEach(pairs, id: \.0.id) {
            hero, index in
          
            let hero = $characterSource.heroes[index]
            NavigationLink(destination: DetailsScreen(character: hero), label: {
              CharacterItem(character: hero.wrappedValue)
            })
          }
        }
        
        Section(header: SectionTitle(title: "Villains")) {
          let villains = characterSource.villains
          let indexes = characterSource.villains.indices
          let pairs = Array(zip(villains, indexes))
          
          ForEach(pairs, id: \.0.id) {
            villain, index in
            
            let villain = $characterSource.villains[index]
            NavigationLink(destination: DetailsScreen(character: villain), label: {
              CharacterItem(character: villain.wrappedValue)
            })
          }
        }
      }.navigationTitle("Characters")
    }
  }
}

struct SectionTitle: View {
  let title: String
  
  var body: some View {
    Text(title)
      .font(.headline)
      .fontWeight(.semibold)
      .padding(.vertical)
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


struct CharacterScreen_Previews: PreviewProvider {
    static var previews: some View {
      let characterSource = CharacterSource()
      CharacterScreen().environmentObject(characterSource)
    }
}
