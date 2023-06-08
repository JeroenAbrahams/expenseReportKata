//
//  ContentView.swift
//  ExpenseReport
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let expenseReport = ExpenseReport(expenses: [Expense(type: .breakfast, amount: 20)])
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .disabled(expenseReport.invalidExpenses())
            Text("Expenses")
            Button("Add random expense", action: {
                print("We still need to implement this!")
            })
            Spacer()
            Text(expenseReport.expenseTotal.text)
        }
        .padding()
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
