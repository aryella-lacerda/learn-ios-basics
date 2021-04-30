//
//  App.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 30/04/21.
//

import SwiftUI

struct App: View {
    @StateObject private var characterSource = CharacterSource()

    var body: some View {
      ContentView().environmentObject(characterSource)
    }
}

struct App_Previews: PreviewProvider {
    static var previews: some View {
        App()
    }
}
