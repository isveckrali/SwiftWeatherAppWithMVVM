//
//  DarkSkyError.swift
//  Weather App
//
//  Created by Mehmet Can Seyhan on 1.03.2019.
//  Copyright © 2019 Mehmet Can Seyhan. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
    case invalidUrl
}
