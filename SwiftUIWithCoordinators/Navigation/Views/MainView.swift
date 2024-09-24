//
//  MainView.swift
//  SwiftUIWithCoordinators
//
//  Created by Samar Khaled on 24/09/2024.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var appCoordinator: AppCoordinator

    var body: some View {
        VStack {
            Text("This is Main View")
        }
        .toolbar {
            Button("Home") {
                appCoordinator.returnToRootView()
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
