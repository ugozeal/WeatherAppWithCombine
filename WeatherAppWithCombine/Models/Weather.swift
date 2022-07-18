//
//  Weather.swift
//  WeatherAppWithCombine
//
//  Created by David Okonkwo on 18/07/2022.
//

import Foundation
struct WeatherResponse: Decodable {
	let main: Weather
}
struct Weather: Decodable {
	let temp: Double?
	let humidity: Double?
	
	static var placeholder: Weather {
		return Weather(temp: nil, humidity: nil)
	}
}
