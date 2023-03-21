//
//  PriceCellView.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 18.03.2023.
//

import SwiftUI

struct PriceCellView: View {
    var title: String
    var price: String
    var period: String
    var backgroundColor: Color
    var textColor: Color

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(backgroundColor)
                    .aspectRatio(contentMode: .fit)
                VStack(spacing: 6) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(textColor)
                    Text(price)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(textColor)
                    Text(period)
                        .font(.headline)
                        .foregroundColor(textColor)
                }
            }
        }
    }
}

struct PriceCellView_Previews: PreviewProvider {
    static var previews: some View {
        PriceCellView(title: "Basic", price: "9$", period: "per month", backgroundColor: .purple, textColor: .white)
    }
}
