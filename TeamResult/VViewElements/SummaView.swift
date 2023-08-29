//
//  SummaView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 28.08.2023.
//

import SwiftUI


struct SummaView: View {
    
    @ObservedObject var field: Field
    @State var fieldOne: [Field]
    
    var summa: Int {
        var sum = 0
        for one in fieldOne {
            let value = Int(one.value)
            sum += value ?? 0
        }
        return sum
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let hight = width / 1.5
            let cornerRadius = hight / 8
            
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundStyle(.secondary)
                    .frame(width: width, height: hight)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
                    .opacity(0.2)
                    .shadow(color: .black, radius: 3, x: 3, y: 3)
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.white, lineWidth: 3)
                    .frame(width: width, height: hight)
                    .blur(radius: width / 25)
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.white, lineWidth: 4)
                    .frame(width: width, height: hight)
                    .shadow(color: .black, radius: 1, x: 1, y: 1)
               
                Text(summa.formatted())
                        .font(.custom("Impact", size: width / 2, relativeTo: .callout))
                        .shadow(color: .black, radius: 1, x: 2, y: 2)
                }
        }
    }
    }

struct SummaView_Previews: PreviewProvider {
    static var previews: some View {
       // SummaView(fieldOne: [Field(id: 1, value: "0")])
       SummaView(field: Field(id: 1, value: "5"), fieldOne: [Field(id: 1, value: "0")])
    }
}
