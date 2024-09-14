//
//  ContentView.swift
//  PointChart
//
//  Created by Jannik Scheider on 25.07.24.
//
import SwiftUI
import Charts

struct ContentView: View {
    let data: [ExerciseData]

    var body: some View {
        ZStack {
            Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all) // Hellgrauer Hintergrund für den gesamten Bildschirm

            
            VStack {
                Text("Übungsübersicht")
                
                Chart(data) { entry in
                    PointMark(
                        x: .value("Date", entry.date, unit: .day),
                        y: .value("Exercise", entry.exercise)
                    )
                    .foregroundStyle(entry.didExercise ? Color.blue.opacity(0.8) : Color.blue.opacity(0.4))
                    .symbol(entry.didExercise ? .circle : .circle)
                }
                .chartXAxis {
                    AxisMarks(values: .stride(by: .day)) { value in
                        AxisValueLabel(format: .dateTime.day().weekday())
                    }
                }
                .chartYAxis {
                    AxisMarks(preset: .aligned) { value in
                        AxisValueLabel()
                    }
                }
                .frame(width: 350, height: 200)
                .background(Color.white) // Hintergrundfarbe des Diagramms
                .padding()
            }
            .background(Color.white) // Hintergrundfarbe des VStack
            .padding()
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: exampleData)
    }
}

import Foundation

extension DateFormatter {
    static let dayFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
}
