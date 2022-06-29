//
//  LeafView.swift
//  BeadsCounter
//
//  Created by Fedii Ihor on 28.06.2022.
//

import SwiftUI

struct LeafView: View {
  
  var angle: Double
  var radius: CGFloat
  @Binding var isRotate: Bool
  
    var body: some View {
         Circle()
        .foregroundColor(.blue)
        .frame(width: 20, height: 20)
        .offset(.init(width: 0, height: -radius))
        .rotationEffect( .degrees(self.isRotate ? -angle : 0))
        .animation(.spring(), value: isRotate)
  }
    
 
}

struct LeafView_Previews: PreviewProvider {
    static var previews: some View {
      LeafView(angle: 30,
               radius: 150,
               isRotate: .constant(false))
    }
}
