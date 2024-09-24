//
//  SwiftUIWithCoordinatorsApp.swift
//  SwiftUIWithCoordinators
//
//  Created by Samar Khaled on 23/09/2024.
//

import SwiftUI

@main
struct SwiftUIWithCoordinatorsApp: App {

    @StateObject private var appCoordinator = AppCoordinator(path: NavigationPath())

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $appCoordinator.path) {
                appCoordinator.performAction(actionData: .startupAction)
            }
            .environmentObject(appCoordinator)
        }
    }
}
