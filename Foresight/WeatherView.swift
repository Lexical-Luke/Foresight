//
//  WeatherView.swift
//  Foresight
//
//  Created by Luke Wilkinson on 2021/02/21.
//

import SwiftUI

struct WeatherView: View {
	
	@ObservedObject var viewModel: WeatherViewModel
	
    var body: some View {
		VStack {
			Text(viewModel.cityName)
				.font(.largeTitle)
				.padding()
			Text(viewModel.temperature)
				.font(.system(size: 70))
				.bold()
			Text(viewModel.weatherIcon)
				.font(.largeTitle)
				.padding()
			Text(viewModel.weatherDescription)
		}.onAppear(perform: viewModel.refresh)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
}
