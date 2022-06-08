//
//  NavigationBar.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        
        ZStack {
            Color.clear
                .background(.mint)
            Text("Quick")
                .frame(maxWidth: .infinity, alignment: .center)
//                    .padding(.leading, 20)
        }.frame(height: 45)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//                    .padding(.bottom, GeometryReader.safeAreaInsets.bottom)
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
