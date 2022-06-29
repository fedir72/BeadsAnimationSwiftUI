//
//  CircleDiagrammView.swift
//  BeadsCounter
//
//  Created by Fedii Ihor on 29.06.2022.
//

import SwiftUI

struct CircleShape: Shape {
    
   @Binding var progress: Double
    
    func path(in rect: CGRect) -> Path {
       var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width/2,
                    startAngle: .radians( 1.5 * .pi ),
                    endAngle: .init(radians: 2*Double.pi*progress + 1.5*Double.pi),
                    clockwise: false)
        return path
    }
}

struct CircleDiagrammView: View {
    
    @Binding var progress: Double
    
    fileprivate var color: Color {
        switch progress {
        case  41...70 : return Color.yellow
        case   0...40 : return Color.green
        default: return Color.red
        }
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            CircleShape(progress: .constant(1))
                .stroke(Color.white,
       style: StrokeStyle(lineWidth: 12,
                          lineCap: .butt,
                          lineJoin: .round,
                            miterLimit: 0,
                            dash: [],
                            dashPhase: 0))
            CircleShape(progress: .constant(progress/100))
                .stroke(color,
       style: StrokeStyle(lineWidth: 12,
                          lineCap: .round,
                          lineJoin: .round,
                            miterLimit: 0,
                            dash: [],
                            dashPhase: 0))
            Text("\(Int(progress))" + "%").font(.system(size: 20))
        }.padding()

    }
}

struct CircleDiagrammView_Previews: PreviewProvider {
    static var previews: some View {
        CircleDiagrammView(progress: .constant(8))
    }
}

