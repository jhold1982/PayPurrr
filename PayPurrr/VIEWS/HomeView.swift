//
//  HomeView.swift
//  PayPurrr
//
//  Created by Justin Hold on 11/16/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Home View")
                }
            }
            .navigationTitle("💵PayPurrr😸")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
