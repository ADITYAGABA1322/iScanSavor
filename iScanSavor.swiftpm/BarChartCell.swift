//
//  BarChartCell.swift
//  iScanSavor
//
//  Created by Aditya Gaba on 25/02/24.
//


import SwiftUI

struct BarChartCell: View {
    
    var value: Double
    var barColor: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(barColor)
            .scaleEffect(CGSize(width: 1, height: value), anchor: .bottom)
    }
    
}
