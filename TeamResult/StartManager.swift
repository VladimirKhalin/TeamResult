//
//  StartView.swift
//  TeamResult
//
//  Created by Vladimir Khalin on 22.08.2023.
//

import SwiftUI

enum Screen {
    case one
    case two
}

class TabRouter: ObservableObject {
    
    @Published var screen: Screen = .one

    func change (to screen: Screen) {
        self.screen = screen
    }
}



