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
                    Text("Deetz")
                        .padding()
						.font(.title)
                }
            }
            .navigationTitle("👉🏻My Info📝")
			.navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
