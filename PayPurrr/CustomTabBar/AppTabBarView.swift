//
//  AppTabBarView.swift
//  PayPurrr
//
//  Created by Justin Hold on 1/5/23.
//

import SwiftUI

struct AppTabBarView: View {
	@State private var selection: String = "home"
	@State private var tabSelection: TabBarItem = .home
    var body: some View {
		CustomTabBarContainerView(selection: $tabSelection) {
			HomeView()
				.tabBarItem(tab: .home, selection: $tabSelection)
			PaycheckView()
				.tabBarItem(tab: .salary, selection: $tabSelection)
			AddBillsView()
				.tabBarItem(tab: .bills, selection: $tabSelection)
			ProfileView()
				.tabBarItem(tab: .profile, selection: $tabSelection)
		}
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBarView()
    }
}

//extension AppTabBarView {
//	private var defaultTabView: some View {
//		TabView(selection: $selection) {
//			Color.red
//				.tabItem {
//					Label("Home", systemImage: "house")
//				}
//			Color.blue
//				.tabItem {
//					Label("Favorites", systemImage: "heart")
//				}
//			Color.orange
//				.tabItem {
//					Label("Profile", systemImage: "person")
//				}
//		}
//	}
//}
