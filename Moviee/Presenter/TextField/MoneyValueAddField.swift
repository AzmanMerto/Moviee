//
//  MoneyValueAddField.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

struct MoneyValueAddField: View {
    @Binding var moneyField : String
    @State var tabbedTextField : Bool = false

    var frameWidth : CGFloat
    var frameHeight : CGFloat
    var body: some View {
            ZStack {
                TextField("", text: $moneyField)
                    .textFieldStyle(MoneyValueAddStyle(frameWidth: frameWidth,
                                                       frameHeight: frameHeight))
                    .keyboardType(.numberPad)
                    .onTapGesture {
                        tabbedTextField.toggle()
                    }
                
                HStack {
                    
                    Text(TextHelper.TextField.price.rawValue.locale())
                        .foregroundColor(Color(ColorHelper.customGreen.rawValue))
                        .font(.caption2)
                        .opacity(tabbedTextField == true || moneyField.count > 0 ? 0 : 1)
                    
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
            MoneyValueAddField(moneyField: .constant(""), frameWidth: UIScreen.main.bounds.width * 0.17, frameHeight: UIScreen.main.bounds.height * 0.05)
        }
    }
}
