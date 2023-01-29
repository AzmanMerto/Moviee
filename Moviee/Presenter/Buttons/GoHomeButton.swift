//
//  GoHomeButton.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct GoHomeButton: View {
    var body: some View {
        
        Button {
            
        } label: {
            HStack {
                Text(TextHelper.Button.goHome.rawValue.locale())
                    .font(.system(size: UIScreen.main.bounds.height * 0.017,
                                  weight: .bold))
                
                Image(systemName: ImageHelper.Icons.rightArrow.rawValue)
                .font(.system(size: UIScreen.main.bounds.height * 0.017))
            }
            .frame(width: UIScreen.main.bounds.width * 0.5,
                   height: UIScreen.main.bounds.height * 0.06)
            .multilineTextAlignment(.center)
            .foregroundColor(Color(ColorHelper.customRed.rawValue))
        }.buttonStyle(GoHomeStyle())
    }
    
}

struct GoHomeButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            GoHomeButton()
        }
    }
}
