//
//  BeadsView.swift
//  BeadsCounter
//
//  Created by Fedii Ihor on 28.06.2022.
//

import SwiftUI

struct BeadsView: View {
  
  var radius: CGFloat
  var lineWidth: CGFloat
  var circle = Circle()

  
    var body: some View {
      Circle()
        .stroke(Color.gray, lineWidth: lineWidth)
        .foregroundColor(.blue)
        .frame(width: radius*2, height: radius*2)

    }
}

struct BeadsView_Previews: PreviewProvider {
    static var previews: some View {
      BeadsView(radius: 150, lineWidth: 4)
    }
}
