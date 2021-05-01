//
//  DetailsView.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 21/04/21.
//

import SwiftUI

struct DetailsScreen: View {
  @Binding var character: Character
  
  var body: some View {
    VStack {
      Text(character.name)
      Button("Toggle Favorite", action: {
        character.isFavorite = !character.isFavorite
      })
    }
  }
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
      DetailsScreen(character: Binding<Character>.constant(Character(name: "Iron Man", isFavorite: true)))
    }
}
