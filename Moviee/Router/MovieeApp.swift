//
//  MovieeApp.swift
//  Moviee
//
//  Created by NomoteteS on 27.01.2023.
//

import SwiftUI

@main
struct MovieeApp: App {
    @StateObject private var dataManager = DataManager()
    
    var body: some Scene {
        WindowGroup {
             NavigationView{
                 MovieeViewsRouter()
                     .environment(\.managedObjectContext, dataManager.persistentContainer.viewContext)
            }
        }
    }
}
