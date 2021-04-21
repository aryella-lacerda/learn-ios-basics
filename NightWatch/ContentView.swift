//
//  ContentView.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 12/04/21.
//

import SwiftUI

var books = [
  "Harry Potter and the Philosopher's Stone",
  "Harry Potter and the Chamber of Secrets",
  "Harry Potter and the Prisoner of Azkaban",
  "Harry Potter and the Goblet of Fire",
  "Harry Potter and the Order of the Phoenix",
  "Harry Potter and the Half-blood Prince",
  "Harry Potter and the Deathly Hallows"
]

var artists = [
  "Sara Barellies",
  "Imagine Dragons",
  "Beyoncé"
]
      
// MARK: CONTENT

struct ContentView: View {
    var body: some View {
      NavigationView {
        List {
          Section(header: ListHeader(icon: "books.vertical.fill", text: "Books")) {
            ForEach(books, id: \.self) {
              book in NavigationLink(book, destination: DetailsView(item: book))
            }
          }
          Section(header: ListHeader(icon: "music.quarternote.3", text: "Artists")) {
            ForEach(artists, id: \.self) {
              artist in NavigationLink(artist, destination: DetailsView(item: artist))
            }
          }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Favorites")
      }
    }
}

struct ListHeader: View {
  let icon: String
  let text: String
  var body: some View {
    HStack {
      Image(systemName: icon).imageScale(.small)
      Text(text)
        .font(.headline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
