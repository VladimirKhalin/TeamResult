//
//  Field.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 23.08.2023.
//

import SwiftUI

class Field: Identifiable, ObservableObject {
    let id: Int
    @Published var value: String
    
    init(id: Int, value: String) {
        self.id = id
        self.value = value
    }
}

class Fields: Identifiable, ObservableObject {
    let id: Int
    @Published var fields: [Field]
    
    init(id: Int, fields: [Field]) {
        self.id = id
        self.fields = fields
    }
}

class FieldSum: Identifiable, ObservableObject {
    let id: Int
    @Published var teamName: String
    @Published var mass: [Field]
    @Published var sum: Int
    
    init(id: Int, teamName: String, sum: Int, mass: [Field]) {
        self.id = id
        self.teamName = teamName
        self.mass = mass
        self.sum = sum
    }
}


func createFields(count: Int) -> [Field] {
    var fields: [Field] = []
    
    for num in 1...count {
        let field = Field(id: num, value: "0")
        fields.append(field)
    }
    return fields
}



func createTeam(game: Int) -> FieldSum {
    let name = "Команда №1"
    var fieldOne: [Field] = []
    var summa: Int = 0
    
    for num in 1...game {
        let field = Field(id: num, value: "0")
        fieldOne.append(field)
    }
    
    for field in fieldOne {
        summa += Int(field.value) ?? 0
        
    }
    
    let teams: FieldSum = FieldSum(id: 1, teamName: name, sum: summa, mass: fieldOne)
    
    return teams
    
}



//func createFields1(game: [Field]) -> Fields {
//
//}
