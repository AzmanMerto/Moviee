//
//  HomeView.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var appRouter: MovieeRouter
    
    var body: some View {
        ZStack {
            ViewsBackground()
            VStack {
                Button {
                    appRouter.state = .addMovie
                } label: {
                    Text("Go to Add Movie View")
                }.buttonStyle(.borderedProminent)
            }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
