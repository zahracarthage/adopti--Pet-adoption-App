//
//  adoptiApp.swift
//  adopti
//
//  Created by Zahra chouchane on 13/7/2022.
//

import SwiftUI

@main
struct adoptiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomePage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
