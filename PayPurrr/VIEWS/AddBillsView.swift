//
//  AddBillsView.swift
//  PayPurrr
//
//  Created by Justin Hold on 10/30/22.
//

import SwiftUI

struct AddBillsView: View {
    var body: some View {
        NavigationStack {
			ZStack {
				Text("Add Bills Here")
					.padding()
					.font(.title)
            }
            .navigationTitle("🫰🏻My Biils💸")
			.navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AddBillsView_Previews: PreviewProvider {
    static var previews: some View {
        AddBillsView()
    }
}
