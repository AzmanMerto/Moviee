//
//  Observe.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

extension Binding where Value == String {
    func limit(_ lenght: Int) -> Self {
        if self.wrappedValue.count > lenght {
            DispatchQueue.main.async {
                self.wrappedValue = String(self.wrappedValue.prefix(lenght))
            }
        }
        return self
    }
}
