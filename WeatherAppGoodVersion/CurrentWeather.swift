//
//  CurrentWeather.swift
//  WeatherAppGoodVersion
//
//  Created by Justus Jukkala on 31/01/2022.
//

import SwiftUI

struct CurrentWeather: View {
    var weather: Weather?
    
    var body: some View {
        VStack(alignment: .center) {
        Text("Weather Justus")
        .font(.largeTitle)
            .bold()
            .padding(60)
            .shadow(color: .gray, radius: 12)
            .foregroundColor(Color.white)
            Spacer()
            
            Text("\(weather?.main.temp ?? 0, specifier: "%.2f") °C")
                .foregroundColor(.white)
                .fontWeight(Font.Weight.heavy)
                .font(.system(size:65))
            .shadow(color: .gray, radius: 6)
            
            Text("\(weather?.name ?? "Unknown")")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding(.bottom, 300)
                .shadow(color: .gray, radius: 6)
            Spacer()
        }
        .background(
        Image("light background")
            .resizable()
            .scaledToFill()
            .clipped()
            .edgesIgnoringSafeArea([.top, .bottom])
        )
    }
}

//struct CurrentWeather Previews: PreviewProvider {
  //  static var previews: some View {
    //    CurrentWeather()
   // }
//}
