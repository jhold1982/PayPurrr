//
//  CustomTabBar.swift
//  PayPurrr
//
//  Created by Justin Hold on 1/4/23.
//

// import SwiftUI
//
// enum SelectedTab: String, CaseIterable {
//	case house
//	case dollarsign
//	case checklist
//	case person
// }
//
// struct CustomTabBar: View {
//	@Binding var selectedTab: SelectedTab
//	private var fillImage: String {
//		selectedTab.rawValue + ".fill"
//	}
//	private var tabColor: Color {
//		switch selectedTab {
//		case .house:
//			return .accentColor
//		case .dollarsign:
//			return .green
//		case .checklist:
//			return .orange
//		case .person:
//			return .mint
//		}
//	}
//    var body: some View {
//		VStack {
//			HStack {
//				ForEach(SelectedTab.allCases, id: \.rawValue) { tab in
//					Spacer()
//					Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
//						.scaleEffect(selectedTab == tab ? 1.25 : 1.0)
//						.foregroundColor(selectedTab == tab ? tabColor : .gray)
//						.font(.system(size: 22))
//						.onTapGesture {
//							withAnimation(.easeInOut(duration: 0.1)) {
//								selectedTab = tab
//							}
//						}
//					Spacer()
//				}
//			}
//			.frame(width: nil, height: 60)
//			.background(.thinMaterial)
//			.cornerRadius(10)
//			.padding()
//		}
//    }
// }
//
// struct CustomTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//		CustomTabBar(selectedTab: .constant(.house))
//    }
// }
