//
//  TimelineQuickTView.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//
// View for a QuickT in the timeline

import SwiftUI

struct TimelineQuickTView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .foregroundColor(.mint)
                    .frame(alignment: .leading)
                    .padding(.leading, 30)
                    
                Text("Name")
                    .foregroundColor(.white)
                    .frame(alignment: .leading)
                    .padding(.leading, 10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
            Text("Pois xa estaria, despois de facer unha libreria matematica propia aqui esta, rotación usando quaternions. Mostra angulos de euler pa que sea mais facil de modificar pero internamente a rotacion calculase con quaternions.")
                .foregroundColor(.white)
                .padding([.leading, .bottom, .trailing], 30)
                .padding(.top, 10)
        }
        .frame(maxWidth: .infinity)
        .background(Color.black)
    }
}

struct TimelineQuickTView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineQuickTView()
    }
}
