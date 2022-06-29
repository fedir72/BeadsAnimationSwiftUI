//
//  PulsationView.swift
//  BeadsCounter
//
//  Created by Fedii Ihor on 29.06.2022.
//

import SwiftUI

struct PulsationView: View {
    var body: some View {
        Loading()
            
    }
}

struct PulsationView_Previews: PreviewProvider {
    static var previews: some View {
        PulsationView()
    }
}

struct Loading: View {
    
    @State var animate = true
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.red.opacity(0.25))
                .frame(width: 350, height: 350)
                .scaleEffect(animate ? 1 : 0)
            Circle()
                .fill(Color.red.opacity(0.25))
                .frame(width: 250, height: 250)
                .scaleEffect(animate ? 1 : 0)
            Circle()
                .fill(Color.red.opacity(0.25))
                .frame(width: 150, height: 150)
                .scaleEffect(animate ? 1 : 0)
            Circle()
                .fill(Color.red)
                .frame(width: 45, height: 45)
                .scaleEffect(animate ? 1 : 0)
        }.onTapGesture() {
            self.animate.toggle()
                
        }
        .animation(.spring().repeatForever(), value: animate)
    }
}
