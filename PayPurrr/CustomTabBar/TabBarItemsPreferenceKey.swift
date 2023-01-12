//
//  TabBarItemsPreferenceKey.swift
//  PayPurrr
//
//  Created by Justin Hold on 1/6/23.
//

import Foundation
import SwiftUI

struct TabBarItemsPreferenceKey: PreferenceKey {
	static var defaultValue: [TabBarItem] = []
	static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
		value += nextValue()
	}
}
struct TabBarItemViewModifier: ViewModifier {
	@Binding var selection: TabBarItem
	let tab: TabBarItem
	func body(content: Content) -> some View {
		content
			.opacity(selection == tab ? 1.0 : 0.0)
			.preference(key: TabBarItemsPreferenceKey.self, value: [tab])
	}
}
extension View {
	func tabBarItem(tab: TabBarItem, selection: Binding<TabBarItem>) -> some View {
		modifier(TabBarItemViewModifier(selection: selection, tab: tab))
	}
}
