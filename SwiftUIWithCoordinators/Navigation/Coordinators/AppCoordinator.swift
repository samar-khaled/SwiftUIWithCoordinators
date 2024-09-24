//
//  AppCoordinator.swift
//  SwiftUIWithCoordinators
//
//  Created by Samar Khaled on 23/09/2024.
//
import SwiftUI

@MainActor final class AppCoordinator: ObservableObject {
    @Published var path: NavigationPath

    init(path: NavigationPath) {
        self.path = path
    }

    @ViewBuilder
    func performAction(actionData: ActionData) -> some View {
        switch actionData.action {
        case .startup:
            StartUpView()
        case .loginClicked:
            LoginView()
        case .mainScreenClicked:
            MainView()
        }
    }

    func returnToRootView() {
        path = NavigationPath()
    }
}
