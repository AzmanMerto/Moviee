//
//  MovieNameAddField.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct MovieNameAddField: View {
    
    /// String value
    @Binding var movieField : String
    
    /// if pressed field its gonna be activated
    @State var tabbedTextField = false
    
    /// isPressed checking boolean
    @State var textEmpty = false
    
    /// For responsive view 
    var frameWidth : CGFloat
    var frameHeight : CGFloat
    
    var body: some View {
        ZStack {
            TextField("", text: $movieField.limit(32))
                .font(.system(size: 12))
                .textFieldStyle(MovieNameAddStyle(frameWidth: frameWidth,
                                                  frameHeight: frameHeight))
                .frame(width: UIScreen.main.bounds.width * 0.44, height: UIScreen.main.bounds.height * 0.04)
            
            Text(textEmpty ? "Empty" : TextHelper.TextField.movieName.rawValue.locale())
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color(ColorHelper.customRed.rawValue))
                .opacity(tabbedTextField == true || movieField.count > 0 ? 0 : 1)
                .multilineTextAlignment(.center)
            }
        .onTapGesture {
            tabbedTextField.toggle()
        }
        .frame(width: UIScreen.main.bounds.width * 0.44, height: UIScreen.main.bounds.height * 0.05)
    }
}

struct MovieNameAddField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            MovieNameAddField(movieField: .constant(""), frameWidth: UIScreen.main.bounds.width * 0.5, frameHeight: UIScreen.main.bounds.height * 0.05)
        }
    }
}
