//
//  Weather.swift
//  Foresight
//
//  Created by Luke Wilkinson on 2021/02/21.
//

import Foundation

public struct Weather{
	let city: String
	let temperature: String
	let realfeel: String
	let description: String
	let iconName: String
	
	init(response: APIResponse) {
		city = response.name
		temperature = "\(Int(response.main.temp))"
		realfeel = "\(Int(response.main.feels_like))"
		description = response.weather.first?.description ?? ""
		iconName = response.weather.first?.iconName ?? ""
	}
}
