//
//  ForesightApp.swift
//  Foresight WatchKit Extension
//
//  Created by Luke Wilkinson on 2021/02/21.
//

import SwiftUI

@main
struct ForesightWatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
			let weatherService = WeatherService()
			let viewModel = WeatherViewModel(weatherService: weatherService)
			WatchView(viewModel: viewModel)
            }
        

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
