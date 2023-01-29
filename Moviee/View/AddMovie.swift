//
//  ContentView.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct AddMovie: View {
    @State var movieField = ""
    @State var moneyField = ""
    var body: some View {
        ZStack {
            ViewsBackground()
            VStack {
                Text(TextHelper.Views.addFavMovie.rawValue.locale())
                    .font(.system(size: UIScreen.main.bounds.height * 0.04, weight: .bold, design: .rounded))
                    .padding(.horizontal)
                    .foregroundColor(Color(ColorHelper.customOrange.rawValue))
                    .multilineTextAlignment(.center)
                    
                Spacer()
            
                // TextFeilds
                HStack {
                    Spacer()

                    MovieNameAddField(movieField: $movieField.limit(35), frameWidth: UIScreen.main.bounds.width * 0.5, frameHeight: UIScreen.main.bounds.height * 0.05)
                        .bold()
                        .foregroundColor(Color(ColorHelper.customRed.rawValue))
                        .padding()
                        
                    MoneyValueAddField(moneyField: $moneyField.limit(3), frameWidth: UIScreen.main.bounds.width * 0.17, frameHeight: UIScreen.main.bounds.height * 0.05)
                        .bold()
                        .foregroundColor(Color(ColorHelper.customGreen.rawValue))
                    
                    Spacer()
                }
                
                Spacer()
                
                AddTakeImageButton {
                    
                }
                
                Spacer()
                AddMovieButton()
                    .padding()
                
                GoHomeButton()
                Spacer()
            }
        }
    }
}

struct AddMovie_Previews: PreviewProvider {
    static var previews: some View {
        AddMovie()
    }
}


