//
//  ContentView.swift
//  PayPurrr
//
//  Created by Justin Hold on 8/23/22.
//
import SwiftUI

struct ContentView: View {
	// MARK: TAB BAR / HEADER APPEARANCE INITIALIZER
    init() {
		UITabBar.appearance().backgroundColor = UIColor.systemGray4
		let navBarAppearance = UINavigationBarAppearance()
		navBarAppearance.configureWithOpaqueBackground()
		navBarAppearance.backgroundColor = UIColor(named: "CustomBlue")
		UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
      }
	@State private var selection = 0
    var body: some View {
		TabView(selection: $selection) {
			HomeView()
				.tabItem {
					Label("Home", systemImage: "house")
				}
				.tag(0)
			PaycheckView()
				.tabItem {
					Label("Calculator", systemImage: "dollarsign")
				}
				.tag(1)
			AddBillsView()
				.tabItem {
					Label("Budget", systemImage: "checklist")
				}
				.tag(2)
			ProfileView()
				.tabItem {
					Label("Profile", systemImage: "person")
				}
				.tag(3)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


