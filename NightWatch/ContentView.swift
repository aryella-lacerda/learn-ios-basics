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
          Section(header: HStack {
            Image(systemName: "books.vertical.fill").imageScale(.small)
            Text("Books")
              .font(.headline)
          }) {
            ForEach(books, id: \.self) {
              book in NavigationLink(book, destination: Text(book))
            }
          }
          Section(header: HStack {
            Image(systemName: "music.quarternote.3").imageScale(.small)
            Text("Artists")
              .font(.headline)
          }) {
            ForEach(artists, id: \.self) {
              artist in NavigationLink(artist, destination: Text(artist))
            }
          }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Favorites")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
