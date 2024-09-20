//
//  DestinationView.swift
//  TurkcellSwiftUI2
//
//  Created by Sefa Aycicek on 20.09.2024.
//

import SwiftUI

struct DestinationView: View {
    var item : Movies
    
    var body: some View {
        Text(item.title)
    }
}

#Preview {
    DestinationView(item : Movies(id: UUID(), title: "text"))
}
