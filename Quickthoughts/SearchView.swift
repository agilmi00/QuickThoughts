//
//  SearchView.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI

struct SearchView: View {
    var body: some View {

        ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20.0) {
                    
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.3))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
