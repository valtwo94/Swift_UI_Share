//
//  CircleGroupVIew.swift
//  share
//
//  Created by zebra on 2022/07/28.
//

import SwiftUI

struct CircleGroupVIew: View {
//    property
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    var body: some View {
        ZStack{
            Circle().stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle().stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CircleGroupVIew_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupVIew(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
