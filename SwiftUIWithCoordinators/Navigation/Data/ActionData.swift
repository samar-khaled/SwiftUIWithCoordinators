//
//  ActionData.swift
//  SwiftUIWithCoordinators
//
//  Created by Samar Khaled on 24/09/2024.
//

import SwiftUI

enum ActionType {
    case startup, loginClicked, mainScreenClicked
}

struct ActionData: Hashable {
    var id: UUID
    var action: ActionType

    init(action: ActionType) {
        id = UUID()
        self.action = action
    }

    static let startupAction = ActionData(action: .startup)
    static let loginAction = ActionData(action: .loginClicked)
    static let mainScreenAction = ActionData(action: .mainScreenClicked)
}
