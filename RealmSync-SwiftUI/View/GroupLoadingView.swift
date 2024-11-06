//
//  GroupLoadingView.swift
//  RealmSync-SwiftUI
//
//  Created by Kritchanat on 6/11/2567 BE.
//

import SwiftUI
import RealmSwift

struct GroupLoadingView: View {
    @ObservedResults(Group.self) var groups
    
    var body: some View {
        
        if let group = groups.first {
            ItemListView(group: group)
        } else {
            ProgressView()
                .onAppear {
                    $groups.append(Group())
                }
        }
    }
}


#Preview {
    GroupLoadingView()
}
