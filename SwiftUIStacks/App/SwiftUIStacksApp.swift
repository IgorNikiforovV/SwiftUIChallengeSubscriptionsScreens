//
//  SwiftUIStacksApp.swift
//  SwiftUIStacks
//
//  Created by Никифоров Игорь Викторович on 17.03.2023.
//

import SwiftUI

@main
struct SwiftUIStacksApp: App {
 
    var body: some Scene {
        WindowGroup {
            TabbarView()
        }
    }
}

struct Previews_SwiftUIStacksApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
