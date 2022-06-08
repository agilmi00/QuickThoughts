//
//  ContentView.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
//        VStack {
//            ZStack {
//            Color.gray.opacity(0.4)
//            Text("Quickthoughts")
//                    .font(.title)
//                    .foregroundColor(.mint)
//            .bold()
//            }
//    }
            TabView {
                TimelineView()
                    .tabItem {
                        Text("Timeline")
                    }
                SearchView()
                    .tabItem {
                        Text("Search")

                    }
                Text("Profile")
                    .tabItem {
                        Text("Profile")
                    }
            }
            .overlay() {
                NavigationBar()
            }
            .onAppear() {
                let attributes = [
                    NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: .bold),
                    NSAttributedString.Key.foregroundColor: UIColor.white
                    ]
                let attributesSelected = [
                    NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: .bold),
                    NSAttributedString.Key.foregroundColor: UIColor.black
                    ]

                UITabBar.appearance().isOpaque = false
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = UIColor.systemMint.withAlphaComponent(1)
                appearance.stackedLayoutAppearance.normal.titleTextAttributes = attributes
                appearance.stackedLayoutAppearance.selected.titleTextAttributes = attributesSelected
                appearance.backgroundEffect = UIBlurEffect(style: .regular)
                UITabBar.appearance().standardAppearance = appearance
                UITabBar.appearance().scrollEdgeAppearance = appearance
                
//                UITabBarAppearance.configureWithOpaqueBackground()
            }
    }
}
extension UITabBarController {
    override open func viewDidLoad() {
        super.viewDidLoad()

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
