//
//  Plan.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 20.03.2023.
//

struct Plan {
    let square: [Subscription]
    let rectangular: [Subscription]
}

extension Plan {
    static var makePlan: Plan {
        Plan(
            square: [
                Subscription(icon: nil,
                             title: "Basic",
                             price: "$22",
                             textColor: Сoloring(red: 255/255, green: 255/255, blue: 255/255),
                             bgColor: Сoloring(red: 139/255, green: 0/255, blue: 255/255),
                             lable: nil),
                Subscription(icon: nil,
                             title: "Pro",
                             price: "$39",
                             textColor: Сoloring(red: 0, green: 0, blue: 0),
                             bgColor: Сoloring(red: 240/255, green: 240/255, blue: 240/255),
                             lable: "Best for designeer"),
                Subscription(icon: nil,
                             title: "Vip",
                             price: "$69",
                             textColor: Сoloring(red: 0, green: 0, blue: 0),
                             bgColor: Сoloring(red: 169/255, green: 10/255, blue: 50/255),
                             lable: nil)
                     ],
             rectangular: [
                Subscription(icon: "wand.and.rays",
                             title: "Team",
                             price: "$299",
                             textColor: Сoloring(red: 255/255, green: 255/255, blue: 255/255),
                             bgColor: Сoloring(red: 62/255, green: 63/255, blue: 70/255),
                             lable: "Perfect for teams with 20 members")
             ])
    }
}
