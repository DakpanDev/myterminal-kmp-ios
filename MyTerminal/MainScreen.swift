//
//  MainScreen.swift
//  MyTerminal
//
//  Created by Mitchell Tol on 19/02/2025.
//

import SwiftUI

struct MainScreen: View {
    @State private var homeViewModel = HomeViewModel()
    @State private var bookmarksViewModel = BookmarksViewModel()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            BookmarksView()
                .tabItem {
                    Label("Bookmarks", systemImage: "list.clipboard")
                }
        }
        .environment(homeViewModel)
        .environment(bookmarksViewModel)
    }
}

#Preview {
    MainScreen()
}
