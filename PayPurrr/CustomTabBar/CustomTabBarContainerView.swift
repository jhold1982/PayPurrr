//
//  CustomTabBarContainerView.swift
//  PayPurrr
//
//  Created by Justin Hold on 1/5/23.
//

import SwiftUI

struct CustomTabBarContainerView<Content: View>: View {
	@State private var tabs: [TabBarItem] = []
	@Binding var selection: TabBarItem
	let content: Content
	init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
		self._selection = selection
		self.content = content()
	}
    var body: some View {
		ZStack(alignment: .bottom) {
			content
				.ignoresSafeArea()
			CustomTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
		}
		.onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
			self.tabs = value
		})
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
	static let tabs: [TabBarItem] = [
		.home, .salary, .bills, .profile
	]
    static var previews: some View {
		CustomTabBarContainerView(selection: .constant(tabs.first!)) {
			HomeView()
		}
	}
}

