//
//  User.swift
//  homeVerheichyk24
//
//  Created by Валерий Вергейчик on 19.06.22.
//

import Foundation

struct Weather: Codable {
    
    struct Coord: Codable {
        var lon: Decimal?
        var lat: Decimal?
    }
    
    let coord: Coord
    
    let weather: [WeatherData]
    
    struct WeatherData: Codable {
        var id: Int?
        var main: String?
        var description: String?
        var icon: String?
    }
    
    let base: String?
    
    struct Main: Codable {
        var temp: Decimal?
        var feelsLike: Decimal?
        var tempMin: Decimal?
        var tempMax: Decimal?
        var pressure: Int?
        var humidity: Int?
        var seaLevel: Int?
        var grndLevel: Int?
        
        enum CodingKeys: String, CodingKey {
            case feelsLike = "feels_like"
            case tempMin = "temp_min"
            case tempMax = "temp_max"
            case seaLevel = "sea_level"
            case grndLevel = "grnd_level"
            case temp, pressure, humidity
        }
    }
    let main: Main
    let visibility: Int?
    
    struct Wind: Codable {
        var speed: Decimal?
        var deg: Int?
        var gust: Decimal?
    }
    
    let wind: Wind
    
    struct Clouds: Codable {
        var all: Int?
    }
    
    let clouds: Clouds
    
    let dt: Int?
    
    struct Sys: Codable {
        var type: Int?
        var id: Int?
        var country: String?
        var sunrise: Int?
        var sunset: Int?
    }
    let sys: Sys
    let timezone: Int?
    let id: Int?
    let name: String?
    let cod: Int?
}






/*{
"coord": {
    "lon": 27.5667,
    "lat": 53.9
},
"weather": [
    {
        "id": 804,
        "main": "Clouds",
        "description": "overcast clouds",
        "icon": "04d"
    }
],
"base": "stations",
"main": {
    "temp": 22.86,
    "feels_like": 23.32,
    "temp_min": 22.86,
    "temp_max": 22.86,
    "pressure": 1008,
    "humidity": 81,
    "sea_level": 1008,
    "grnd_level": 983
},
"visibility": 10000,
"wind": {
    "speed": 2.68,
    "deg": 331,
    "gust": 3.77
},
"clouds": {
    "all": 98
},
"dt": 1655715132,
"sys": {
    "type": 1,
    "id": 8939,
    "country": "BY",
    "sunrise": 1655689057,
    "sunset": 1655750691
},
"timezone": 10800,
"id": 625144,
"name": "Minsk",
"cod": 200
}
*/
