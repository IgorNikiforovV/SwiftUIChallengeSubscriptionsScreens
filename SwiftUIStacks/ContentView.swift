//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 17.03.2023.
//

import SwiftUI

struct ContentView: View {

    let plan: Plan

    var columns: [GridItem] {
        [GridItem(.flexible())]
    }

    var rows: [GridItem] {
        [GridItem(.fixed(10))]
    }

    var body: some View {
        ScrollView {
            VStack {
                HeaderView()
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, alignment: .center) {
                        ForEach(plan.square, id: \.self) { item in
                            ZStack {
                                PricingView(title: item.title,
                                            price: item.price,
                                            textColor:  Color(red: item.textColor.red, green: item.textColor.green, blue: item.textColor.blue),
                                            bgColor: Color(red: item.bgColor.red, green: item.bgColor.green, blue: item.bgColor.blue))
                                if let label = item.lable {
                                    LabelView(label: label, offsetY: offsetY(item.icon))
                                }
                            }
                        }
                    }
                }
                .frame(height: 200)
                .padding(.horizontal)

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(plan.rectangular, id: \.self) { item in
                            ZStack {
                                PricingView(icon: item.icon,
                                            title: item.title,
                                            price: item.price,
                                            textColor:  Color(red: item.textColor.red, green: item.textColor.green, blue: item.textColor.blue),
                                            bgColor: Color(red: item.bgColor.red, green: item.bgColor.green, blue: item.bgColor.blue))
                                if let label = item.lable {
                                    LabelView(label: label, offsetY: offsetY(item.icon))
                                }
                            }
                        }
                    }
                }
                .frame(height: 240)
                .padding()
            }
        }
        Spacer()
    }

    private func offsetY(_ icon: String?) -> CGFloat {
        icon == nil ? 87 : 110
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(plan: Plan.makePlan)
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding()
    }
}


struct LabelView: View {
    var label: String
    var offsetY: CGFloat

    var body: some View {
        Text(label)
            .font(.system(.caption, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(5)
            .background(Color(red: 255/255, green: 183/255, blue: 37/255))
            .cornerRadius(8)
            .offset(x: 0, y: offsetY)
    }
}
