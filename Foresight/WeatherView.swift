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
		ZStack{
			LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
						   startPoint: .topLeading,
						   endPoint: .bottomTrailing)
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			VStack {
				Text(viewModel.cityName)
					.font(.largeTitle)
					.padding()
				Text(viewModel.temperature)
					.bold()
					.font(.system(size: 70))
				Text("Feels Like: " + viewModel.temperature)
					.font(.system(size: 23))
					.bold()
					.padding(.bottom)
				Text(viewModel.weatherIcon)
					//comment the inverts for white text
					//uncomment for black text
					.colorInvert()
					.font(.largeTitle)
					.padding()
				Text(viewModel.weatherDescription)
					.padding()
				///*
				Text("Made by Luke Wilkinson")
					.padding()
				//*/
			}.onAppear(perform: viewModel.refresh)
			//comment the inverts for white text
			//uncomment for black text
			.colorInvert()
		}
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
		WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
}
