//
//  AddMovieStyle.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct AddMovieStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .background {
                    StyleHelper(cornerRadius: 30,
                                strokeColor: ColorHelper.customOrange.rawValue,
                                strokeLineWidth: 3,
                                frameWidth: UIScreen.main.bounds.width * 0.7,
                                frameHeight: UIScreen.main.bounds.height * 0.09)
                }
        }
        
    }
}

struct AddMovieStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            VStack {
                VStack {
                Button {  }
                label: { Text("") }.buttonStyle(AddMovieStyle())
                }
            }
        }
    }
}
