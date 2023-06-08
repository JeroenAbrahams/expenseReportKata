//
//  TotalView.swift
//  ExpenseReport
//

import Foundation
import SwiftUI
import UIKit

class TotalView: UIView {

    private var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textAlignment = .center
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)        
        addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateLabel(expenseTotal: ExpenseTotal) {
        label.text = expenseTotal.text
    }
}
