//
//  OverlayCardsView.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 18.03.2023.
//

import SwiftUI

struct OverlayCardsView: View {
    var body: some View {
        ZStack {
            PricingView(icon: "burst.fill", title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
                .offset(x: 0, y: 180)
            PricingView(icon: "dial", title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 255/255, green: 183/255, blue: 37/255))
                .scaleEffect(0.95)
            PricingView(icon: "wand.and.rays", title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255)).offset(x: 0, y: -180)
                .scaleEffect(0.9)
        }
    }
}

struct OverlayCardsView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayCardsView()
    }
}
