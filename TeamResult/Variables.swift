//
//  Variables.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 22.08.2023.
//

import SwiftUI

class Variables: ObservableObject {
    @Published var teams: String = "8"    // Количество команд
    @Published var games: String = "6"    // Количество отслеживаемых игр
}
