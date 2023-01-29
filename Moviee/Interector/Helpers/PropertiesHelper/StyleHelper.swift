//
//  StyleHelper.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct StyleHelper: View {
  
    var cornerRadius : CGFloat
    
    var strokeColor : String
    var strokeLineWidth : CGFloat
    
    var frameWidth : CGFloat
    var frameHeight : CGFloat
  
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius )
                .stroke(Color(strokeColor),lineWidth: strokeLineWidth)
                .background {
                    Color(ColorHelper.customSoftDark.rawValue)
                        .cornerRadius(cornerRadius)
                }
        }.frame(width: frameWidth, height: frameHeight)
    }
}

