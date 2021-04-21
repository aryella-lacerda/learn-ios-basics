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
      List {
        ForEach(books, id: \.self, content: {
          book in Text(book)
        })
        
        ForEach(artists, id: \.self, content: {
          artist in Text(artist)
        })
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
