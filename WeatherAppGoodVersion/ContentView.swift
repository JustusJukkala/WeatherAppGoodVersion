//
//  ContentView.swift
//  WeatherAppGoodVersion
//
//  Created by Justus Jukkala on 31/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    @ObservedObject var weather = CurrentWeatherViewModel()
    @State var city: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter your city", text: $city, onCommit: {
                self.weather.fetch(by: self.city)
            }).padding(.horizontal)
                
            
                CurrentWeather(weather: self.weather.current)
            
        }
    }
}

/*extension Double {
    /// Rounds the ddouble to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
 */

extension Double {
    var round: Int {
        return Int(self)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
