//
//  SystemTextFieldView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 22.08.2023.
//

import SwiftUI

struct SystemTextFieldView: View {
    
    @ObservedObject var field: Field
    
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
               
                    TextField("0", text: $field.value, onEditingChanged: { (editingChanged) in
                        if editingChanged {
                           // print("TextField focused")
                        } else {
                            
                            print("TextField focus removed")
                            
                        }
                    })
                    //.onChange(of: field.value) { print($0)}
                    
                    
                    .font(.custom("Impact", size: width / 3, relativeTo: .callout))
                    .textFieldStyle(PlainTextFieldStyle())
                    .multilineTextAlignment(.center)
                    
                  //  Text(fieldOne.sum.formatted())
                    //.foregroundColor(number.numberFlag ? .white : .init(white: 0.8))
                   //     .font(.custom("Impact", size: width / 2, relativeTo: .callout))
                    // .scaleEffect(number.numberFlag ? 1.4 : 1)
                   //     .shadow(color: .black, radius: 1, x: 2, y: 2)
                }
        }
    }
    }


struct SystemTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SystemTextFieldView(field: Field(id: 1, value: "10"))
            .frame(width: 100, height: 70)
    }
}
