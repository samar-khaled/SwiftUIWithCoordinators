//
//  StartUpView.swift
//  SwiftUIWithCoordinators
//
//  Created by Samar Khaled on 23/09/2024.
//

import SwiftUI

struct StartUpView: View {
    @EnvironmentObject var appCoordinator: AppCoordinator

    var body: some View {
        Form {
            NavigationLink("Login", value: ActionData.loginAction)

            NavigationLink("Main App", value: ActionData.mainScreenAction)
        }
        .navigationDestination(for: ActionData.self) { action in
            appCoordinator.performAction(actionData: action)
        }
    }
}

#Preview {
    StartUpView()
}
