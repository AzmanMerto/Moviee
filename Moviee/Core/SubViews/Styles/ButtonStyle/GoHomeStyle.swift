//
//  GoHomeStyle.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct GoHomeStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background {
                StyleHelper(cornerRadius: 30,
                            strokeColor: ColorHelper.customOrange.rawValue,
                            strokeLineWidth: 3,
                            frameWidth: UIScreen.main.bounds.width * 0.5,
                            frameHeight: UIScreen.main.bounds.height * 0.06)
            }
    }
}

struct GoHomeStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            VStack {
            Button {    }
            label: { Text("") }.buttonStyle(GoHomeStyle())
            }
        }
    }
}

