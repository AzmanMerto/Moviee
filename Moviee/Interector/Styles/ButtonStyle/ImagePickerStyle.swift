//
//  ImagePickerStyle.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct ImagePickerStyle: ButtonStyle {
    
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .background {
                StyleHelper(cornerRadius: 10,
                            strokeColor: ColorHelper.customOrange.rawValue,
                            strokeLineWidth: 2,
                            frameWidth: UIScreen.main.bounds.width * 0.8 ,
                            frameHeight: UIScreen.main.bounds.height * 0.07)
            }
    }
}

struct ImagePickerStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            VStack {
                Button {  }
            label: { Text("") }.buttonStyle(ImagePickerStyle())
            }
        }
    }
}
