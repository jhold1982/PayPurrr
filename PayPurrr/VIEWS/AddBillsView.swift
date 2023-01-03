//
//  AddBillsView.swift
//  PayPurrr
//
//  Created by Justin Hold on 10/30/22.
//

import SwiftUI

struct AddBillsView: View {
    
//    @State private var payPeriodRange = ""
    @State private var billDueDate = Date()
    @State private var payPeriodEnd = Date()
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        VStack(spacing: 23) {
                            HStack {
                                Text("TestLeft")
                                Text("TestCenter")
                                Text("TestRight")
                            }
                        }
                        .frame(width: 350, height: 500)
                        .padding(.vertical, 20)
                        .background(.thinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        VStack {
                            Text("Test")
                            HStack {
                                Spacer()
                                Spacer()
                                Text("Add PayPurrriod")
                                Button {
                                    // move this to bottom of screen and add pay period sections
                                } label: {
                                    Image(systemName: "plus")
                                }
                                .padding()
                                .background(.gray)
                                .foregroundColor(.white)
                                .font(.title)
                                .clipShape(Circle())
                                .padding(.trailing)
                                .frame(alignment: .bottomTrailing)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Budget Section")
        }
    }
}

struct AddBillsView_Previews: PreviewProvider {
    static var previews: some View {
        AddBillsView()
    }
}


//DatePicker("", selection: $billDueDate, in: ...Date(), displayedComponents: .date)
//Text("to")
//DatePicker("", selection: $payPeriodEnd, in: ...Date(), displayedComponents: .date)
