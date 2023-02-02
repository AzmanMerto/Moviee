//
//  MovieeRouter.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct MovieeViewsRouter: View {
    
    @StateObject var movieeRouter = MovieeRouter()
    
    @ViewBuilder
    var MovieeRootView: some View {
        switch movieeRouter.state {
        case .home :
            HomeView()
        case .addMovie :
            AddMovieView()
                .transition(.move(edge: .bottom))
        }
    }
    
    var body: some View {
        Group {
            MovieeRootView
                .environmentObject(movieeRouter)
        }
    }
}

class MovieeRouter: ObservableObject {
    @Published var state: MovieeState = .home
}

enum MovieeState {
    case home
    case addMovie
}
