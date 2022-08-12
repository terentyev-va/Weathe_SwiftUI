//
//  ForecastCard.swift
//  Weathe_SwiftUI
//
//  Created by Вячеслав Терентьев on 12.08.2022.
//

import SwiftUI

struct ForecastCard: View {
    var forecast: Forecast
    var forecastPeriod: ForecastPeriod
    var isActive: Bool = true
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ForecastCard_Previews: PreviewProvider {
    static var previews: some View {
        ForecastCard(forecast: Forecast.hourly[0], forecastPeriod: .hourly)
    }
}
