//
//  ViewsBackground.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct ViewsBackground: View {
    var body: some View {
        ZStack {
            Color(ColorHelper.customDark.rawValue)
                .ignoresSafeArea()
            Image(ImageHelper.Views.backgroundImage.rawValue)
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct ViewsBackground_Previews: PreviewProvider {
    static var previews: some View {
        ViewsBackground()
    }
}
