//
//  DetailsView.swift
//  NightWatch
//
//  Created by Aryella Lacerda on 21/04/21.
//

import SwiftUI

struct DetailsView: View {
  let item: String
  var body: some View {
      Text(item)
  }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
      DetailsView(item: "Testing")
    }
}
