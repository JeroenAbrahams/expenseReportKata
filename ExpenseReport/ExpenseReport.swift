//
//  ExpenseReport.swift
//  ExpenseReport
//

import Foundation

class ExpenseReport {
    let expenses: [Expense]
    var expenseTotal: ExpenseTotal
    
    init(expenses: [Expense]) {
        self.expenses = expenses
        expenseTotal = Self.calculateTotal(expenses: expenses)
    }
    
    static func calculateTotal(expenses: [Expense]) -> ExpenseTotal {
        var mealExpenses = 0
        var total = 0
        for expense in expenses {
            if (expense.type == .dinner || expense.type == .breakfast) {
                mealExpenses += expense.amount
            }
            total += expense.amount
        }

        return ExpenseTotal(text: "Total Expenses: \(total)")
    }

    func invalidExpenses() -> Bool {
        for expense in expenses {
            if  expense.type == .dinner && expense.amount > 5000 || expense.type == .breakfast && expense.amount > 1000 {
                return true
            }
        }
        return false
    }
}
