import Foundation

class CharacterSource: ObservableObject {
  let heroes = [
    Character(name: "Iron Man", isFavorite: true),
    Character(name: "Captain America", isFavorite: false),
    Character(name: "Black Widow", isFavorite: false),
    Character(name: "Harry Potter", isFavorite: false)
  ]

  let villains = [
    Character(name: "Thanos", isFavorite: true),
    Character(name: "Lord Voldemort", isFavorite: false),
    Character(name: "Mandarin", isFavorite: false),
    Character(name: "Ultron", isFavorite: false),
  ]
}
