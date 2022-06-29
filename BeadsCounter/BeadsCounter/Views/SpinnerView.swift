//
//  SpinnerView.swift
//  BeadsCounter
//
//  Created by Fedii Ihor on 28.06.2022.
//

import SwiftUI


struct SpinnerView: View {
  
  var maximumSector: Double
  @Binding var leavesCount: Int
  @State var rotateState: Bool = true


  var body: some View {
    VStack(spacing: 50) {
    
      ZStack {
        BeadsView(radius: 150, lineWidth: 3)
        ForEach(0..<leavesCount) { index in
         let angle = -maximumSector/Double(leavesCount)*Double(index)
         LeafView(angle: angle,
                  radius: 150,
                   isRotate: .constant(rotateState))
            .rotationEffect(.degrees(angle))
        }
      }
        
        
      VStack {
      Button("eject pearls") {
        self.rotateState.toggle()
      }
      .font(.system(size: 35))
      .padding(.bottom,10)
      if !rotateState {
        Button("count beads") {
          
        }
        .font(.system(size: 35))
        .foregroundColor(.red)
        }
      }
    }
  }

  func animate() {
  }
}


struct SpinnerView_Previews: PreviewProvider {
  static var previews: some View {
      SpinnerView(maximumSector: 300,
                  leavesCount: .constant(12),
                  rotateState: true)
  }
}

