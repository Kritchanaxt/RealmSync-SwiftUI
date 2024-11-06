//
//  RealmSync_SwiftUIApp.swift
//  RealmSync-SwiftUI
//
//  Created by Kritchanat on 6/11/2567 BE.
//

import SwiftUI
import RealmSwift

let app = App(id: "application-0-rvlot")

@main
struct RealmSync_SwiftUIApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            ContentView(app: app)
        }
    }
}
