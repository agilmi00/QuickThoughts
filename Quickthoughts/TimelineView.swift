//
//  TimelineView.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0.7) {
                    TimelineQuickTView()
                    TimelineQuickTView()
                    TimelineQuickTView()
                    TimelineQuickTView()
                    TimelineQuickTView()
                    
                }//.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding(.top, 45)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white.opacity(0.3))
        //            .ignoresSafeArea()
        //            .navigationTitle("Quickthoughts")
        //            .navigationTitle(text)
        //            .navigationBarHidden(true)
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
