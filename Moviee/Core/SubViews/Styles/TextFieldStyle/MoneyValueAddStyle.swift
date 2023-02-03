//
//  MoneyValueAddStyle.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct MoneyValueAddStyle: TextFieldStyle {
    var frameWidth : CGFloat
    var frameHeight : CGFloat
    
    func _body(configuration: TextField<_Label>) -> some View {
          ZStack {
              configuration.body
                  .background{
                      StyleHelper(cornerRadius: 5,
                                  strokeColor: ColorHelper.customOrange.rawValue,
                                  strokeLineWidth: 2,
                                  frameWidth: frameWidth,
                                  frameHeight: frameHeight)
              }
          }
  }
}

struct MoneyValueAddStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            TextField("", text: .constant(""))
                .textFieldStyle(MoneyValueAddStyle(frameWidth: UIScreen.main.bounds.width * 0.17, frameHeight: UIScreen.main.bounds.height * 0.05))
        }
    }
}
