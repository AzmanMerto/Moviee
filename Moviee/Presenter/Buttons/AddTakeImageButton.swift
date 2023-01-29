//
//  AddTakeImageButton.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct AddTakeImageButton: View {
    var action : () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Circle()
                    .stroke(Color(ColorHelper.customOrange.rawValue),
                            lineWidth: 3)
                
                Text(TextHelper.Button.addTakeImage.rawValue.locale())
                    .font(.title2).bold()
                    .foregroundColor(Color(ColorHelper.customOrange.rawValue))
            }
            .frame(width: UIScreen.main.bounds.width * 0.4)
            .multilineTextAlignment(.center)
        }.buttonStyle(AddTakeImageStyle())
    }
}

struct AddTakeImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            AddTakeImageButton {    }
        }
    }
}
