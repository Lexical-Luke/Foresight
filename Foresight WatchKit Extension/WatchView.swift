//
//  ContentView.swift
//  Foresight WatchKit Extension
//
//  Created by Luke Wilkinson on 2021/02/21.
//

import SwiftUI

struct WatchView: View {
	@ObservedObject var viewModel: WeatherViewModel
	
    var body: some View {
		ScrollView{
			VStack {
				Text(viewModel.cityName)
					.font(.system(size: 20))
					.padding()
				Text(viewModel.temperature)
					.font(.system(size: 40))
					.bold()
				Text(viewModel.weatherIcon)
					.font(.system(size: 30))
					.padding()
				Text(viewModel.weatherDescription)
					.padding()
				Text("Made by Luke Wilkinson")
					.font(.system(size: 12))
					.padding()
			}.onAppear(perform: viewModel.refresh).scaledToFit()
		}
    }
}

struct WatchView_Previews: PreviewProvider {
    static var previews: some View {
		WatchView(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
}
