//
//  ContentView.swift
//  PayPurrr
//
//  Created by Justin Hold on 8/23/22.
//
import SwiftUI

struct ContentView: View {
	
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray4
      }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
            PaycheckView()
                .tabItem {
                    Label("Calculator", systemImage: "dollarsign.circle.fill")
                }
            AddBillsView()
                .tabItem {
                    Label("Budget", systemImage: "list.bullet.circle")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
