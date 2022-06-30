//
//  NewQuickTView.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI

struct NewQuickTView: View {
    
    @EnvironmentObject var auth: Authentication
    @EnvironmentObject var NewQuickTVieWModel: NewQuickTViewModel
        
    var body: some View {
        
        NavigationView {
            VStack (spacing: 0){
                TextEditor(text: $NewQuickTVieWModel.text)
            }
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
        .onAppear {
            UITextView.appearance().backgroundColor = .clear
        }
        
    }
}

struct NewQuickTView_Previews: PreviewProvider {
    static var previews: some View {
        NewQuickTView()
    }
}

