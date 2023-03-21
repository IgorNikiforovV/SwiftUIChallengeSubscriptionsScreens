//
//  LabelView.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 21.03.2023.
//

import SwiftUI

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

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(label: "discount rates", offsetY: 87)
    }
}
