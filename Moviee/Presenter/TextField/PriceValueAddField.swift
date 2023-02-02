//
//  PriceValueAddField.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct PriceValueAddField: View {
    
    /// String value
    @Binding var priceField : String
    
    /// if pressed field its gonna be activated
    @State var tabbedTextField : Bool = false

    /// isPressed checking boolean
    @State var PriceTextEmpty = false
    
    /// For responsive view
    var frameWidth : CGFloat
    var frameHeight : CGFloat
    var body: some View {
            ZStack {
                TextField("", text: $priceField.limit(3))
                    .textFieldStyle(MoneyValueAddStyle(frameWidth: frameWidth,
                                                       frameHeight: frameHeight))
                    .keyboardType(.numberPad)
                    .frame(width: UIScreen.main.bounds.width * 0.144,height: UIScreen.main.bounds.height * 0.05)
                    .onTapGesture {
                        tabbedTextField.toggle()
                    }
                
                HStack {
                    
                    Text(TextHelper.TextField.price.rawValue.locale())
                        .foregroundColor(Color(ColorHelper.customGreen.rawValue))
                        .font(.caption2)
                        .opacity(tabbedTextField == true || priceField.count > 0 ? 0 : 1)
                    
                    Image(systemName: ImageHelper.Icons.dollar.rawValue)
                        .foregroundColor(Color(ColorHelper.customGreen.rawValue))
                        .font(.caption)
                }
            }
        .frame(width: UIScreen.main.bounds.width * 0.144,height: UIScreen.main.bounds.height * 0.05)
    }
}

struct MoneyValueAddField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            PriceValueAddField(priceField: .constant(""), frameWidth: UIScreen.main.bounds.width * 0.17, frameHeight: UIScreen.main.bounds.height * 0.05)
        }
    }
}
