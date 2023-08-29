//
//  ContentView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 22.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var variables = Variables()

    @State var summaFields: Int = 0
    
    var body: some View {
        
        let teamFields: [Field] = createFields(count: Int(variables.games) ?? 6)
       // let teamOne: FieldSum = createTeam(game: Int(variables.games) ?? 6)
       
       // var test = Int(teamFields[0].value + teamFields[1].value)!
        
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            
            VStack {
                HStack {
                    
                   // TeamNameView()
                    ForEach (teamFields) {field in
                        SystemTextFieldView(field: field)
                            
                    }
                   // SummaView(fieldOne: summaFields)
                  // Text("\(summaFields)")
                    SummaView(field: teamFields[1] , fieldOne: teamFields)
                    //SummaView(fieldOne: teamFields)
                }
                
                .frame(width: width * 0.8, height: height / 8)
                
                Button {
                    var test = Int(teamFields[0].value)! + Int(teamFields[1].value)!
                    
                    var sum = 0
                    for field in teamFields{
                        let volue = Int(field.value) ?? 0
                        sum += volue
                    }
                    summaFields = 5
                    
                    //summaFields = sum
                        print("Сумма балов команды: \(test) баллов")
                        print (summaFields)
                    //print(teamFields[1].value)
                   
                    
                    
                    
                    
                } label: {
                    Text("Button")
                }

            }
            .frame(width: width, height: height * 0.9)
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(variables: Variables())
            .environmentObject(TabRouter())
    }
}
