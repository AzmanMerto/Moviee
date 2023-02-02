//
//  AddMovieButton.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct AddMovieButton: View {
    var action : () -> Void
    var body: some View {
                Button {
                    action()
                } label: {
                    HStack {
                        Spacer()
                        
                        Image(systemName: ImageHelper.Icons.upload.rawValue)
                            .font(.system(size: UIScreen.main.bounds.height * 0.046))
                        
                        Spacer()
                        
                        Text(TextHelper.Button.addMovie.rawValue.locale())
                            .font(.system(size: UIScreen.main.bounds.height * 0.024,weight: .black))
                        
                        Spacer()
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.7,
                           height: UIScreen.main.bounds.height * 0.09)
                    .padding(.trailing)
                    .foregroundColor(Color(ColorHelper.customRed.rawValue))
                }
                .buttonStyle(AddMovieStyle())
                .frame(width: UIScreen.main.bounds.width * 0.7)

    }
}

struct AddMovieButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            AddMovieButton {
                
            }
        }
    }
}
