//
//  MovieNameAddField.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct MovieNameAddField: View {
    
    /// String value
    @StateObject var vmm : ViewModelManager = .init(UIImage())

    
    
    /// For responsive view 
    var frameWidth : CGFloat
    var frameHeight : CGFloat
    
    var body: some View {
        ZStack {
            TextField("", text: $vmm.movieName.limit(32))
                .font(.system(size: 12))
                .textFieldStyle(MovieNameAddStyle(frameWidth: frameWidth,
                                                  frameHeight: frameHeight))
                .frame(width: UIScreen.main.bounds.width * 0.44, height: UIScreen.main.bounds.height * 0.04)
            
            Text(TextHelper.TextField.movieName.rawValue.locale())
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color(ColorHelper.customRed.rawValue))
                .opacity(vmm.tabbedTextField == true || vmm.movieName.count > 0 ? 0 : 1)
                .multilineTextAlignment(.center)
            }
        .onTapGesture {
            vmm.tabbedTextField.toggle()
        }
        .frame(width: UIScreen.main.bounds.width * 0.44, height: UIScreen.main.bounds.height * 0.05)
    }
}

struct MovieNameAddField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            MovieNameAddField(frameWidth: UIScreen.main.bounds.width * 0.5, frameHeight: UIScreen.main.bounds.height * 0.05)
        }
    }
}
