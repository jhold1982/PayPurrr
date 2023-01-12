//
//  TabBarItem.swift
//  PayPurrr
//
//  Created by Justin Hold on 1/6/23.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//	let iconName: String
//	let title: String
//	let color: Color
//}
enum TabBarItem: Hashable {
	case home, salary, bills, profile
	var iconName: String {
		switch self {
		case .home: return "house"
		case .salary: return "dollarsign"
		case .bills: return "checklist"
		case .profile: return "person"
		}
	}
	var title: String {
		switch self {
		case .home: return "Home"
		case .salary: return "Salary"
		case .bills: return "Bills"
		case .profile: return "Profile"
		}
	}
	var color: Color {
		switch self {
		case .home: return Color.indigo
		case .salary: return Color.green
		case .bills: return Color.red
		case .profile: return Color.orange
		}
	}
}
