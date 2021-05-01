//
//  CharacterScreen.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 30/04/21.
//

import SwiftUI

struct CharacterScreen: View {
  @EnvironmentObject var characterSource: CharacterSource
  @State var isFavoriteFilterOn = false

  var body: some View {
    NavigationView {
      List {
        Section(header: SectionTitle(title: "Heroes")) {
          
          let heroes = characterSource.heroes
          let indexes = characterSource.heroes.indices
          let pairs = Array(zip(heroes, indexes))
          
          ForEach(pairs, id: \.0.id) {
            hero, index in
            let boundHero = $characterSource.heroes[index]
            
            if !isFavoriteFilterOn || (isFavoriteFilterOn && hero.isFavorite) {
              NavigationLink(destination: DetailsScreen(character: boundHero), label: {
                CharacterItem(character: hero)
              })
            }
          }.onDelete(perform: { indexSet in
            characterSource.heroes.remove(atOffsets: indexSet)
          }).onMove(perform: { indices, newOffset in
            characterSource.heroes.move(fromOffsets: indices, toOffset: newOffset)
          })
        }
        
        Section(header: SectionTitle(title: "Villains")) {
          let villains = characterSource.villains
          let indexes = characterSource.villains.indices
          let pairs = Array(zip(villains, indexes))
          
          ForEach(pairs, id: \.0.id) {
            villain, index in
            let boundVillain = $characterSource.villains[index]
            
            if !isFavoriteFilterOn || (isFavoriteFilterOn && villain.isFavorite) {
              NavigationLink(destination: DetailsScreen(character: boundVillain), label: {
                CharacterItem(character: villain)
              })
            }
          }.onDelete(perform: { indexSet in
            characterSource.villains.remove(atOffsets: indexSet)
          }).onMove(perform: { indices, newOffset in
            characterSource.villains.move(fromOffsets: indices, toOffset: newOffset)
          })
        }
      }.navigationTitle("Characters").toolbar{
        ToolbarItem(placement: .bottomBar) {
          Toggle(isOn: $isFavoriteFilterOn, label: {
            Text("Filter Favorites")
          })
        }
        ToolbarItem(placement: .navigationBarTrailing) {
          EditButton()
        }
        ToolbarItem(placement: .navigationBarLeading) {
          Button("Reset") {
            let newSource = CharacterSource()
            self.characterSource.heroes = newSource.heroes
            self.characterSource.villains = newSource.villains
          }
        }
      }
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
