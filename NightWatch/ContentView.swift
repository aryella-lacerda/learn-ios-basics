//
//  ContentView.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 12/04/21.
//

import SwiftUI
      
struct ContentView: View {
    // This top-level view is necessary?
    var body: some View {
      VStack {
        HStack {
          VStack {
            // Groups are necessary to use more than 10 child views
            VStack(alignment: .leading) {
              HStack {
                Image(systemName: "books.vertical.fill")
                  .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                  .foregroundColor(.blue)
                Text("Books")
                  .font(.largeTitle)
              }.padding(.bottom)
              Text("Harry Potter and the Philosopher's Stone")
              Text("Harry Potter and the Chamber of Secrets")
              Text("Harry Potter and the Prisoner of Azkaban")
              Text("Harry Potter and the Goblet of Fire")
              Text("Harry Potter and the Order of the Phoenix")
              Text("Harry Potter and the Half-blood Prince")
              Text("Harry Potter and the Deathly Hallows")
            }
            .padding(.horizontal)
            
            HStack {
              VStack(alignment: .leading) {
                HStack {
                  Image(systemName: "music.quarternote.3")
                    .imageScale(.large)
                    .foregroundColor(.blue)
                  Text("Artists").font(.largeTitle)
                }.padding(.bottom)
                Text("Sara Barellies")
                Text("Imagine Dragons")
                Text("Beyoncé")
              }
              Spacer()
            }
            .padding([.top, .leading, .trailing])
          }
          Spacer()
        }
        Spacer()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
