//
//  ProfileView.swift
//  PayPurrr
//
//  Created by Justin Hold on 11/16/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("My info")
                        .padding()
                        .font(.headline)
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
