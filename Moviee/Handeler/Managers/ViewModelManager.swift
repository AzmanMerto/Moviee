//
//  ViewModelManager.swift
//  Moviee
//
//  Created by NomoteteS on 1.02.2023.
//

import Foundation
import SwiftUI

class ViewModelManager: ObservableObject {
    
    
    //MARK: - String
    @Published var movieName : String = ""
    @Published var moviePrice : String = ""
    @Published var movieImage : String = ""

    
    //MARK: - Boolean
    
    @Published var imageSection : Bool = false
    @Published var takePhoto : Bool = false
    @Published var addImageGallery : Bool = false
    
    /// isPressed checking boolean
    @Published var tabbedTextField  : Bool = false
    
    //MARK: - UIImage
    @Published var movieUIImage : UIImage
    
    init(_ movieUIImage: UIImage) {
        self.movieUIImage = movieUIImage
    }

}


