//
//  Webservice.swift
//  WeatherAppWithCombine
//
//  Created by David Okonkwo on 18/07/2022.
//

import Foundation
import Combine

class Webservice {
	func fetchWeather(city: String) -> AnyPublisher<Weather, Error> {
		guard let url = URL(string: Constants.URLs.weather(city: city)) else {
			fatalError("Invalid URL")
		}
		
		return URLSession.shared.dataTaskPublisher(for: url)
			.map {$0.data}
			.decode(type: WeatherResponse.self, decoder: JSONDecoder())
			.map { $0.main }
			.receive(on: RunLoop.main)
			.eraseToAnyPublisher()
	}
}
