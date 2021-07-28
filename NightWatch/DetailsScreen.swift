//
//  DetailsView.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 21/04/21.
//

import SwiftUI

struct DetailsScreen: View {
  @Binding var character: Character
  @Environment(\.verticalSizeClass) var verticalSize

  
  var body: some View {
    VStack {
      Text(character.name)
      if verticalSize == .regular {
        Text("""
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed nibh placerat nulla posuere dictum. Ut iaculis quam id augue euismod dapibus. Mauris in purus sed quam interdum gravida. Sed mattis eu dui ac fermentum. Nam quis aliquam dui, posuere elementum arcu. Aliquam tristique sem rhoncus vulputate tincidunt. Suspendisse vitae sapien volutpat, consectetur lacus at, tincidunt ex. Donec ac turpis mattis, tincidunt felis imperdiet, suscipit justo. Mauris mattis lobortis arcu, ac vulputate enim condimentum eget. Pellentesque id libero justo. Maecenas nec velit et tortor imperdiet convallis ut ac ipsum. Nam sed erat at eros egestas fringilla. Curabitur varius justo tellus, nec fringilla ante cursus et. Duis euismod ex vitae pellentesque mollis.
          """
        ).padding(.all)
      }
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
