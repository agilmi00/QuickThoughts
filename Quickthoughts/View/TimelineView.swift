//
//  TimelineView.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI

struct TimelineView: View {

    @ObservedObject var viewModel = TimelineViewModel()
    @EnvironmentObject var auth: Authentication

    var body: some View {

        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 1.0) {
                ForEach(viewModel.timelineQuickTs.reversed(), id: \.id) { QuickT in
                    CustomNavLink(destination: QuickTView(quickt: QuickT)
                        .navBarTitle(title: "QuickT")
                    ) {
                        TimelineQuickTView(quickt: QuickT, user: "Placeholder")
                    }
                }
            }.padding(1)
                .background(Color.mint)
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white.opacity(0.3))
        .task {
            do {
                try await viewModel.callAPI(userId: auth.user.id!)
            }
            catch {
                print("Error", error)
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
