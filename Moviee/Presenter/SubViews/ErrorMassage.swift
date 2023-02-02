//
//  ErrorMassage.swift
//  Moviee
//
//  Created by NomoteteS on 1.02.2023.
//

import SwiftUI

struct ErrorMassage: View {
    @Binding var errorMassaga : Bool
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color(ColorHelper.customSoftDark.rawValue),lineWidth: 3)
                    .background {
                        Color(ColorHelper.customDark.rawValue)
                            .cornerRadius(40)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.9 ,
                       height: UIScreen.main.bounds.height * 0.1)
            
            .opacity(1)

            
            Text("Are you sure you entered your favorite movie or its price?")
                .padding(.horizontal,UIScreen.main.bounds.width * 0.15)
                .font(.FredokaOneSmall)
                .foregroundColor(Color(ColorHelper.customRed.rawValue))
                .multilineTextAlignment(.center)
            }
            Button {
                errorMassaga.toggle()
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: UIScreen.main.bounds.width * 0.3 ,
                           height: UIScreen.main.bounds.height * 0.04)
                        .foregroundColor(Color(ColorHelper.customSoftDark.rawValue))
                    
                    Text("OKEY")
                        .foregroundColor(Color(ColorHelper.customRed.rawValue))
                }
            }

        }
        .frame(width: UIScreen.main.bounds.width * 0.9 ,
           height: UIScreen.main.bounds.height * 0.1)

        .opacity(errorMassaga ? 1 : 0)
    }
}

struct ErrorMassage_Previews: PreviewProvider {
    static var previews: some View {
        ErrorMassage(errorMassaga: .constant(true))
    }
}
