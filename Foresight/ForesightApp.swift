//
//  ForesightApp.swift
//  Foresight
//
//  Created by Luke Wilkinson on 2021/02/21.
//

import SwiftUI

@main
struct ForesightApp: App {
    var body: some Scene {
        WindowGroup {
			let weatherService = WeatherService()
			let viewModel = WeatherViewModel(weatherService: weatherService)
            WeatherView(viewModel: viewModel)
        }
    }
}
