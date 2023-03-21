//
//  TabbarView.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 21.03.2023.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView() {
            ContentView(plan: Plan.makePlan)
                .tabItem {
                    VStack {
                        Image(systemName: "bag")
                        Text("Plans")
                    }
                }
            OverlayCardsView()
                .tabItem {
                    VStack {
                        Image(systemName: "creditcard")
                        Text("Cards")
                    }
                }
        }
        .accentColor(.orange)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
