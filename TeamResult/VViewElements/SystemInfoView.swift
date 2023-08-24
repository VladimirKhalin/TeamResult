//
//  SystemTypeButtonView.swift
//  UM2023
//
//  Created by Vladimir Khalin on 21.03.2023.
//

import SwiftUI

struct SystemInfoView: View {
   
   
    var nameButton: String
    var textFieldFlag: Bool
    var gamesOrTeams: Bool
   
    @ObservedObject var variables: Variables
   
    
    
    
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            
            
            let width = geometry.size.width
            let hight = width / 4
            let cornerRadius = width / 15
            
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundStyle(.secondary)
                    .frame(width: width, height: hight)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
                    .shadow(color: .black, radius: 3, x: 3, y: 3)
                    .opacity(0.2)
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.white, lineWidth: 3)
                    .frame(width: width, height: hight)
                    .blur(radius: width / 30)
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.white, lineWidth: 4)
                    .frame(width: width, height: hight)
                   
                  
                HStack{
                    Text(nameButton)
                    
                    if textFieldFlag {
                        TextField("0", text: gamesOrTeams ? $variables.teams : $variables.games)
                            .textFieldStyle(PlainTextFieldStyle())
                            .frame(width: width / 7)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.green)
                    }
                     
                }
                .frame(width: width, height: hight)
                .font(.system(size: width / 12, weight: .regular, design: .rounded))
                .shadow(color: .black, radius: 1, x: 2, y: 2)
                   
            }
            
        }
        
    }
}

struct SystemTypeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SystemInfoView(nameButton: "Количество команд:", textFieldFlag: true, gamesOrTeams: true, variables: Variables())
            .frame(width: 300, height: 80)
    }
}
