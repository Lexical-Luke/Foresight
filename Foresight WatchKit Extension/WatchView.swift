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
		ZStack{
			LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
						   startPoint: .topLeading,
						   endPoint: .bottomTrailing)
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			ScrollView{
				VStack {
					Text(viewModel.cityName)
						.font(.system(size: 20))
						.padding()
					Text(viewModel.temperature)
						.font(.system(size: 40))
						.bold()
					Text("Feels Like: " + viewModel.temperature)
						.font(.system(size: 10))
						.bold()
						.padding(.bottom)
					Text(viewModel.weatherIcon)
						.font(.system(size: 30))
						//comment the inverts for white text
						//uncomment for black text
						.colorInvert()
						//.padding()
					Text(viewModel.weatherDescription)
						.padding(.bottom)
						.padding()
					///*
					Text("Made by Luke")//Wilkinson
						.font(.system(size: 12))
						.padding()
					//*/
				}.onAppear(perform: viewModel.refresh).scaledToFit()
				//comment the inverts for white text
				//uncomment for black text
				.colorInvert()
			}
		}
	}
}

struct WatchView_Previews: PreviewProvider {
	static var previews: some View {
		WatchView(viewModel: WeatherViewModel(weatherService: WeatherService()))
	}
}
