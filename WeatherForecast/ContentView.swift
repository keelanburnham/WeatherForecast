//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Keelan Burnham on 5/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForcast(day: "Mon", isRainy: false, high: 70, low: 50)
            DayForcast(day: "Tue", isRainy: true, high: 60, low: 40)
            DayForcast(day: "Wed", isRainy: false, high: 65, low: 45)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForcast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(3)
            Text("High: \(high)ºF")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)ºF")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
