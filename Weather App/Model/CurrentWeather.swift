//
//  CurrentWeather.swift
//  Weather App
//
//  Created by Mehmet Can Seyhan on 1.03.2019.
//  Copyright © 2019 Mehmet Can Seyhan. All rights reserved.
//

import UIKit
import Foundation

struct CurrentWeather: Codable {
    var temperature: Double
    var humidity: Double
    var precipProbability: Double
    var summary: String
    var icon: String
    
    
}

extension CurrentWeather {
    var iconImage: UIImage {
        switch icon {
        case "clear-day":
            return UIImage(named: "clear-day")!
        case "clear-night":
             return UIImage(named: "clear-night")!
        case "rain":
             return UIImage(named: "rain")!
        case "snow":
             return UIImage(named: "snow")!
        case "sleet":
             return UIImage(named: "sleet")!
        case "wind":
            return UIImage(named: "wind")!
        case "fog":
            return UIImage(named: "fog")!
        case "cloudy":
            return UIImage(named: "cloudy")!
        case "partly-cloudy-day":
            return UIImage(named: "partly-cloudy")!
        case "partly-cloudy-night":
            return UIImage(named: "cloudy-night")!
        default:
            return UIImage(named: "default")!
        }
    }
}

