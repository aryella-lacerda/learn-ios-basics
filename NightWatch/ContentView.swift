//
//  ContentView.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 12/04/21.
//

import SwiftUI
      
struct ContentView: View {
    var body: some View {
      List {
        Text("Harry Potter and the Philosopher's Stone")
        Text("Harry Potter and the Chamber of Secrets")
        Text("Harry Potter and the Prisoner of Azkaban")
        Text("Harry Potter and the Goblet of Fire")
        Text("Harry Potter and the Order of the Phoenix")
        Text("Harry Potter and the Half-blood Prince")
        Text("Harry Potter and the Deathly Hallows")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
