//
//  DataModel.swift
//  Moviee
//
//  Created by NomoteteS on 1.02.2023.
//

import Foundation
import SwiftUI

class DataModels: ObservableObject {
    
    @Published var movieName : String = ""
    @Published var moviePrice : String = ""
    @Published var movieImage : UIImage = UIImage(named: "")!
    
    @Published var imageSection : Bool = false
    
}
