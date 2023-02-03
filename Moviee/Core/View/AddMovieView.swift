//
//  AddMovieView.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct AddMovieView: View {
    
    /// Router
    @EnvironmentObject var appRouter: MovieeRouter
    
    @StateObject var vmm : ViewModelManager = .init(UIImage())
    
    var body: some View {
            ZStack {
                
                ViewsBackground()

                VStack {
                    // MARK: - Header
                    Text(TextHelper.Views.addFavMovie.rawValue.locale())
                        .font(.FredokaOne)
                        .padding(.horizontal,UIScreen.main.bounds.width * 0.099)
                        .foregroundColor(Color(ColorHelper.customOrange.rawValue))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    // MARK: - TextFeilds
                    HStack(spacing: 30) {
                        Spacer()
                        MovieNameAddField(frameWidth: UIScreen.main.bounds.width * 0.5,
                                          frameHeight: UIScreen.main.bounds.height * 0.05)
                        .foregroundColor(Color(ColorHelper.customRed.rawValue))
                        
                        PriceValueAddField(frameWidth: UIScreen.main.bounds.width * 0.17,
                                           frameHeight: UIScreen.main.bounds.height * 0.05)
                        .foregroundColor(Color(ColorHelper.customGreen.rawValue))
                        
                        Spacer()
                    }
                    .bold()

                    // MARK: - Buttons
                    VStack {
                        Spacer()
                        
                        AddTakeImageButton()
                        
                        Spacer()
                        AddMovieButton()
                        .padding()
                        
                        GoHomeButton()
                        Spacer()
                    }
                }
               
            }
    }
}

struct AddMovieView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieView()
    }
}
