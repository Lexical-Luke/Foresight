//
//  ForesightApp.swift
//  Foresight WatchKit Extension
//
//  Created by Luke Wilkinson on 2021/02/21.
//

import SwiftUI

@main
struct ForesightApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
