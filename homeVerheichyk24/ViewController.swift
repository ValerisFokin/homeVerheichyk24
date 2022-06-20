//
//  ViewController.swift
//  homeVerheichyk24
//
//  Created by Валерий Вергейчик on 18.06.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let city = "Minsk"
        guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "APIKey") as? String else {
            print("You don't have APIKey")
            return
        }
        if let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric") {
        var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
                print("Completed")
                if let response = response {
                    print(response)
                }
                if let data = data {
                    let weather = try! JSONDecoder().decode(Weather.self, from: data)
                    print(weather)
                }
                if let error = error {
                    print(error)
                }
            }
            print("Requesting...")
          
            dataTask.resume()
    }
    }


}

