//
//  LoginView.swift
//  SwiftUIWithCoordinators
//
//  Created by Samar Khaled on 23/09/2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appCoordinator: AppCoordinator
    
    var body: some View {
        VStack {
           Text("This is login View")
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
    LoginView()
}
