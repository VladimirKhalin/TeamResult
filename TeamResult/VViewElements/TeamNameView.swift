//
//  teamNameView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 23.08.2023.
//

import SwiftUI

struct TeamNameView: View {
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
                VStack {
                    Text("№1")
                        .font(.custom("Impact", size: width / 4, relativeTo: .callout))
                        .shadow(color: .black, radius: 1, x: 2, y: 2)
                    Text("КОМАНДА")
                        .font(.custom("Impact", size: width / 6, relativeTo: .callout))
                        .shadow(color: .black, radius: 1, x: 2, y: 2)
                }
            }
           // .animation(.default, value: number.numberFlag)
        }
    }
    }

struct teamNameView_Previews: PreviewProvider {
    static var previews: some View {
        TeamNameView()
            .frame(width: 210, height: 70)
    }
}
