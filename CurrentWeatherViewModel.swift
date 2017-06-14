//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Zachary J. Berling on 6/14/17.
//  Copyright © 2017 Venture eCommerce LLC. All rights reserved.
//

import Foundation
import UIKit

struct currentWeatherViewModel{
    let temperature: String
    let humidity: String
    let PrecipitationProbability:String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        
        let precipPercentValue = Int(model.precipitationProbability * 100)
        self.PrecipitationProbability = "\(precipPercentValue)%"
        
        self.summary = model.summary
        
        let weatherIcon = WeatherIcon(iconString:model.Icon)
        self.icon = weatherIcon.image
    }
}
