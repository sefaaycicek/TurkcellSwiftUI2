//
//  CustomButton.swift
//  TurkcellSwiftUI2
//
//  Created by Sefa Aycicek on 20.09.2024.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        Button(action: {
        }) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.red)
            Text("Tıkla Beni")
        }.padding()
    }
}

#Preview {
    CustomButton()
}
