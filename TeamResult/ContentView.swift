//
//  ContentView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 22.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var variables = Variables()
    
//    var calculation : Double {
//            guard let m = Double(input1), let n  = Double(input2) else { return 0 }
//            return m * n
//        }
    
    
    
    
    
    var body: some View {
        
        let teamFields: [Field] = createFields(count: Int(variables.games) ?? 6)
        
        
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            
            VStack {
                HStack {
                    
                    TeamNameView()
                    
                    ForEach (teamFields) {field in
                        SystemTextFieldView(field: field)
                    }
                   // TeamNameView()
                    
                }
                .frame(width: width * 0.8, height: height / 8)
                
                
                Button {
                   //var summa = sum()
                    
                    var summa: [Int] = []
                    
                    for field in teamFields {
                        let number = Int(field.value)
                        summa.append(number ?? 0)
                      //  print(field.value)
                    }
                    print(summa)
                  
                } label: {
                    Text("BUTTON")
                }

                
                
            }
            .frame(width: width, height: height * 0.9)
            .padding(20)
        }
    }
}


//func sum() -> Int {
//    var summa: Int = 0
//
//    for field in teamFields {
//        var num = field.value
//    }
//
//    return summa
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(variables: Variables())
            .environmentObject(TabRouter())
    }
}
