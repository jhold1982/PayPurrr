//
//  PaycheckView.swift
//  PayPurrr
//
//  Created by Justin Hold on 11/15/22.
//

import SwiftUI

struct PaycheckView: View {
    @State private var hourlyRate = 0.0
    @State private var workingHours = 40.0
    @FocusState private var userHourlyRate: Bool
    let localCurrency: FloatingPointFormatStyle<Double>.Currency =
		.currency(code: Locale.current.currency?.identifier ?? "USD")
    var biWeeklySalary: Double {
        hourlyRate * workingHours * 2
    }
    var monthlySalary: Double {
        hourlyRate * workingHours * 4
    }
    var yearlySalary: Double {
        hourlyRate * workingHours * 52
    }
    var body: some View {
        NavigationStack {
            Form {
                Section("How much are you paid hourly?") {
                    TextField("Get Paid!", value: $hourlyRate, format: localCurrency)
                        .keyboardType(.decimalPad)
                        .focused($userHourlyRate)
                }
                Section("Weekly work hours") {
                    Stepper("\(workingHours.formatted()) hours", value: $workingHours, in: 8...60, step: 0.25)
                }
                Section("Bi-Weekly Salary") {
                    Text(biWeeklySalary, format: localCurrency)
                }
                Section("Monthly Salary") {
                    Text(monthlySalary, format: localCurrency)
                }
                Section("Yearly Salary") {
                    Text(yearlySalary, format: localCurrency)
                }
				Button("Reset", action: reset)
                .navigationTitle("💵Salary Calculator🧮")
				.navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            userHourlyRate = false
                        }
                    }
                }
            }
        }
    }
    func reset() {
		hourlyRate = 0.0
		workingHours = 40.0
    }
}

struct PaycheckView_Previews: PreviewProvider {
    static var previews: some View {
        PaycheckView()
    }
}
