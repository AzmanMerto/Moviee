//
//  String.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

extension String {
    /// It localize any string from Localizable.stirng
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
