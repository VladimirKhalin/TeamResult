//
//  SettingsView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 22.08.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @ObservedObject var variables: Variables
    
    
    var body: some View {
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            
            
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 600, maxWidth: .infinity)
                    .clipped()
                    .edgesIgnoringSafeArea(.all)
                
                VStack() {
                    
                    Text("ВВЕДИТЕ КОЛИЧЕСТВО УЧАСТВУЮЩИХ КОМАНД И КОЛИЧЕСТВО ИГР:")
                        .foregroundColor(.white)
                        .font(.system(size: geometry.size.height / 45, weight: .regular, design: .rounded))
                        .padding(.vertical, 12)
                    
                    Spacer()
                    
                    VStack(spacing: 14){
                        
                        SystemInfoView(nameButton: "Количество команд:", textFieldFlag: true, gamesOrTeams: true, variables: variables )
                        
                        SystemInfoView(nameButton: "Количество игр:", textFieldFlag: true, gamesOrTeams: false, variables: variables)
                        
                        SystemInfoView(nameButton: "Сохранить", textFieldFlag: false, gamesOrTeams: false, variables: variables)
                            .onTapGesture {
                                print(variables.teams)
                                print(variables.games)
                            }
                    }
                   .frame(width: width / 3, height: height / 2)
                    
                    Spacer()
                    
                }
                .frame(width: width, height: height * 0.9)
            }
        }
    }
    
    
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView(variables: Variables())
                .environmentObject(TabRouter())
        }
    }
}
