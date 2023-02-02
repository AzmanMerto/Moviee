//
//  AddMovieView.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct AddMovieView: View {

    /// DataManager
    private var dataManager = DataManager()
    @Environment(\.managedObjectContext) var managedObjContext

    /// Router
    @EnvironmentObject var appRouter: MovieeRouter

    /// Storage propertys
    @State var movieField = ""
    @State var priceField = ""
    @State var image : UIImage = UIImage()
    
    /// Boolean propertys
    @State var imageSection = false
    @State var errorMassage = false
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
                    MovieNameAddField(movieField: $movieField,
                                      frameWidth: UIScreen.main.bounds.width * 0.5,
                                      frameHeight: UIScreen.main.bounds.height * 0.05)
                        .bold()
                        .foregroundColor(Color(ColorHelper.customRed.rawValue))
                        
                    PriceValueAddField(priceField: $priceField,
                                       frameWidth: UIScreen.main.bounds.width * 0.17, frameHeight: UIScreen.main.bounds.height * 0.05)
                        .bold()
                        .foregroundColor(Color(ColorHelper.customGreen.rawValue))
                    
                    Spacer()
                }
                
                // MARK: - Buttons
                VStack {
                    Spacer()
                    
//                    AddTakeImageButton(dataModel: DataModels())
                        
                    
                    Spacer()
                    AddMovieButton{
                        /// Check value is empty
                        let status = (movieField.count > 0 && priceField.count > 0)
                        if status {
                            let image = image
                            let data = image.pngData()
                            dataManager.addMovie(movieName: movieField, price: priceField, movieImage: data!, context: managedObjContext)
                        } else {
                            errorMassage.toggle()
                        }
                    }
                        .padding()
                    
                    GoHomeButton()
                    Spacer()
                }
            }
            ErrorMassage(errorMassaga: $errorMassage)
        }
    }
}

struct AddMovieView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieView()
    }
}
