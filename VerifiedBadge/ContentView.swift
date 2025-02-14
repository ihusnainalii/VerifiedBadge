//
//  ContentView.swift
//  VerifiedBadge
//
//  Created by Husnain Ali on 2/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VerifiedBadge(content: {
            Image(systemName: "checkmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .bold()
        })
            .foregroundColor(.blue)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    ContentView()
}
