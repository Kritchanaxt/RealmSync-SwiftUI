//
//  ContentView.swift
//  RealmSync-SwiftUI
//
//  Created by Kritchanat on 6/11/2567 BE.
//

import SwiftUI
import RealmSwift

import RealmSwift


struct ContentView: View {
    
    @ObservedObject var app: RealmSwift.App
    
    var body: some View {
        if let user = app.currentUser {
            RealmOpeningView()
                .environment(\.partitionValue, user.id)
           
        }
        else {
            LoginView()
        }
    }
}

#Preview {
    ContentView(app: app)
}
