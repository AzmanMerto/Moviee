//
//  FontManager.swift
//  Moviee
//
//  Created by NomoteteS on 1.02.2023.
//

import Foundation
import SwiftUI



extension Font {

    static var FredokaOne: Font {
        Font.custom("FredokaOne-Regular", size: UIScreen.main.bounds.height * 0.04)
    }
    
    static var FredokaOneSmall: Font {
        Font.custom("FredokaOne-Regular", size: UIScreen.main.bounds.height * 0.02)
    }
}
