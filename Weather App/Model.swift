//
//  Model.swift
//  Weather App
//
//  Created by administrator on 17/01/2022.
//

import Foundation




// MARK: - Welcome
struct Welcome: Codable {
    let lat, lon: Double
    let timezone: String
    let timezone_offset: Int
    let current: Current
    let hourly: [Current]
}

// MARK: - Current
struct Current: Codable {
    let dt: Int
    let sunrise, sunset: Int?
    let temp, feels_like: Double
    let pressure, humidity: Int
    let dew_point, uvi: Double
    let clouds, visibility: Int
    let wind_speed: Double
    let wind_deg: Int
    let weather: [Weather]
    let wind_gust: Double?
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}
