//
//  DiagramView.swift
//  BeadsCounter
//
//  Created by Fedii Ihor on 29.06.2022.
//

import SwiftUI

struct AnaliticsView: View {
    
  
    
    @State var pickerItem = 0
    @State var diadramValues: [[Double]] = [
        [80,20,55],
        [92,48,10],
        [30,60,83]
    ]
    var body: some View {
        
        ZStack() {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Analitics")
                    .font(.system(size: 35))
                    .fontWeight(.heavy)
                Text("Choose a month")
                
                Picker(selection: $pickerItem, label: Text("")) {
                    Text("September").tag(0)
                    Text("October").tag(1)
                    Text("November").tag(2)
                }.pickerStyle(.menu)
                    .frame(width: 250,
                           height:40,
                           alignment: .center)
                    .foregroundColor(.white)
                    .background(.white)
                    .cornerRadius(20)
                
                HStack( spacing: 3){
                    CircleDiagrammView(progress:
                                        $diadramValues[pickerItem][0])
                    CircleDiagrammView(progress:
                                        $diadramValues[pickerItem][1])
                    CircleDiagrammView(progress:
                                        $diadramValues[pickerItem][2])
                }
                .frame(height: 180, alignment: .center)
                
                HStack(spacing: 20) {
                    DiagramView(progres: .constant(diadramValues[pickerItem][0]))
                    DiagramView(progres: .constant(diadramValues[pickerItem][1]))
                    DiagramView(progres: .constant(diadramValues[pickerItem][2]))
                }
                .frame(height: 240, alignment: .center)
            }
        }
    }
}

struct AnaliticsView_Previews: PreviewProvider {
    static var previews: some View {
        AnaliticsView()
    }
}


/*ZStack {
    ZStack {
        Ellipse().edgesIgnoringSafeArea(.all)
            .foregroundColor(.brown)
        Rectangle().frame(width: 200, height: 200)
            .foregroundColor(.white)
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .frame(width: 150, height: 150, alignment: .center)
        Capsule().frame(width: 60, height: 150, alignment: .center)
            .foregroundColor(.green)
        Circle().frame(width: 60, height: 60, alignment: .center).foregroundColor(.orange)
            
    }
}*/
