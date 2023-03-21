//
//  PricingView.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 18.03.2023.
//

import SwiftUI

struct PricingView: View {
    var icon: String?
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color

    var body: some View {
        ZStack {
            VStack {
                icon.map {
                    Image(systemName: $0)
                        .font(.largeTitle)
                        .foregroundColor(textColor)
                }

                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(textColor)
                Text(price)
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundColor(textColor)
                Text("per month")
                    .font(.headline)
                    .foregroundColor(textColor)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            .padding(40)
            .background(bgColor)
            .cornerRadius(10)
        }
    }

    struct PricingView_Previews: PreviewProvider {
        static var previews: some View {
            PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
        }
    }
}
