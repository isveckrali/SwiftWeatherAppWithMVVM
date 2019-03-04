//
//  ViewController.swift
//  Weather App
//
//  Created by Mehmet Can Seyhan on 1.03.2019.
//  Copyright © 2019 Mehmet Can Seyhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    
    //fileprivate let darkSkyApiKey = "33e4af7e6b9dc23dfad205ed2f0cdc89"
    
    let client = DarkSkyAPIClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        getCurrentWeather()
    }

    func displayWeather(using viewModel: CurrentWeatherViewModel) {
        currentTemperatureLabel.text = viewModel.temperature
        currentHumidityLabel.text = viewModel.humidity
        currentPrecipitationLabel.text = viewModel.precipitationPropability
        currentSummaryLabel.text = viewModel.summary
        currentWeatherIcon.image = viewModel.icon
    }

    @IBAction func getCurrentWeather() {
        toggleRefreshAnimation(on: true)
        client.getCurrentWeather(at: .alcatrazIsland) { [unowned self] (currentWeather, error) in
            if let currentWeather = currentWeather {
                let viewModel = CurrentWeatherViewModel(model: currentWeather)
                self.displayWeather(using: viewModel)
                self.toggleRefreshAnimation(on: false)
            }
        }
    }

    func toggleRefreshAnimation(on: Bool) {
        if on {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
    
}


