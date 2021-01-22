//
//  Apple_FrameworksApp.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/22/21.
//

import SwiftUI

@main
struct Apple_FrameworksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
