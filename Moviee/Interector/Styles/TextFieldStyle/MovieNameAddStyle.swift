//
//  MovieNameAddStyle.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct MovieNameAddStyle: TextFieldStyle {
    var frameWidth : CGFloat
    var frameHeight : CGFloat
    
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .background{
                StyleHelper(cornerRadius: 5,
                            strokeColor: ColorHelper.customOrange.rawValue,
                            strokeLineWidth: 2,
                            frameWidth: frameWidth,
                            frameHeight: frameHeight)
            }
    }
}

struct MovieNameAddStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            TextField("", text: .constant(""))
                .textFieldStyle(MovieNameAddStyle(frameWidth: UIScreen.main.bounds.width * 0.5, frameHeight: UIScreen.main.bounds.height * 0.05))
        }
    }
}
