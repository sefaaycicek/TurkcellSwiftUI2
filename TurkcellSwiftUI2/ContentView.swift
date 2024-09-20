//
//  ContentView.swift
//  TurkcellSwiftUI2
//
//  Created by Sefa Aycicek on 20.09.2024.
//

import SwiftUI

struct Movies : Identifiable {
    var id = UUID()
    var title = ""
}

let list = [Movies(title : "Elma"),
            Movies(title : "Armut"),
            Movies(title : "Portakal")]


struct ContentView: View {

    @State var userName : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                Text("Hello, world!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.pink)
                    .padding(EdgeInsets(top: 14, leading: 5, bottom: 20, trailing: 4))
                
                TextField("Selam", text: $userName)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .border(.quinary)
                
                Text(userName)
                    .font(.title)
                
                Button(action: {
                    userName = "Tıklandı"
                }) {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.red)
                    Text("Tıkla Beni")
                }.padding()
                
                CustomButton()
                
                List(list) { item in
                    NavigationLink(destination: DestinationView(item: item)) {
                        Text(item.title)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
