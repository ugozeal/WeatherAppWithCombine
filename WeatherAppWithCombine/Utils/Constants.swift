//
//  Constants.swift
//  WeatherAppWithCombine
//
//  Created by David Okonkwo on 18/07/2022.
//

import Foundation

struct Constants {
	struct URLs {
		static let key = "a462fa04f266f3f58d4e3bb71eca092c"
		static func weather(city: String) -> String {
			return "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(key)&units=imperial"
		}
		
		//celsius = metric
	}
}
