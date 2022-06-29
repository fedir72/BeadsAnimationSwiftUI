//
//  DiagramView.swift
//  BeadsCounter
//
//  Created by Fedii Ihor on 29.06.2022.
//

import SwiftUI

struct DiagramView: View {
    
    @Binding var progres: Double
    
    //MARK: - mutable color for progressview
    fileprivate var color: Color {
        switch progres {
        case  41...70 : return Color.yellow
        case   0...40  : return Color.green
        default: return Color.red
        }
    }
    
    
    var body: some View {
        VStack {
        ZStack(alignment: .bottom) {
            Rectangle().frame(width: 50, height: 200).foregroundColor(Color.white)
            Rectangle().frame(width: 50, height: progres*2.0)
                .foregroundColor(color)
        }
        Text("02").padding(.top, 4)
        }
        .animation(.spring(), value: progres)
    }
}

struct DiagramView_Previews: PreviewProvider {
    static var previews: some View {
        DiagramView(progres: .constant(30))
    }
}
