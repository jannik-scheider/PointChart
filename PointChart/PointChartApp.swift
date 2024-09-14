//
//  PointChartApp.swift
//  PointChart
//
//  Created by Jannik Scheider on 25.07.24.
//

import SwiftUI
import Charts


struct ExerciseData: Identifiable {
    let id = UUID()
    let date: Date
    let exercise: String
    let didExercise: Bool
}

let exampleData: [ExerciseData] = [
    ExerciseData(date: Date(), exercise: "Pushups", didExercise: true),
    ExerciseData(date: Date(), exercise: "Situps", didExercise: false),
    ExerciseData(date: Date(), exercise: "Squats", didExercise: true),
    ExerciseData(date: Date(), exercise: "Running", didExercise: false),
    ExerciseData(date: Date(), exercise: "Yoga", didExercise: true),
    
    ExerciseData(date: Date().addingTimeInterval(-86400), exercise: "Pushups", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400), exercise: "Situps", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400), exercise: "Squats", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400), exercise: "Running", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400), exercise: "Yoga", didExercise: false),
    
    ExerciseData(date: Date().addingTimeInterval(-86400 * 2), exercise: "Pushups", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 2), exercise: "Situps", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 2), exercise: "Squats", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 2), exercise: "Running", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 2), exercise: "Yoga", didExercise: true),
    
    ExerciseData(date: Date().addingTimeInterval(-86400 * 3), exercise: "Pushups", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 3), exercise: "Situps", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 3), exercise: "Squats", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 3), exercise: "Running", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 3), exercise: "Yoga", didExercise: false),
    
    ExerciseData(date: Date().addingTimeInterval(-86400 * 4), exercise: "Pushups", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 4), exercise: "Situps", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 4), exercise: "Squats", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 4), exercise: "Running", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 4), exercise: "Yoga", didExercise: true),
    
    ExerciseData(date: Date().addingTimeInterval(-86400 * 5), exercise: "Pushups", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 5), exercise: "Situps", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 5), exercise: "Squats", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 5), exercise: "Running", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 5), exercise: "Yoga", didExercise: false),
    
    ExerciseData(date: Date().addingTimeInterval(-86400 * 6), exercise: "Pushups", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 6), exercise: "Situps", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 6), exercise: "Squats", didExercise: true),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 6), exercise: "Running", didExercise: false),
    ExerciseData(date: Date().addingTimeInterval(-86400 * 6), exercise: "Yoga", didExercise: true)
]

@main
struct PointChartApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(data: exampleData)
        }
    }
}
