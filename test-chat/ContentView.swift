//
//  ContentView.swift
//  test-chat
//
//  Created by nur kholis on 23/11/22.
//

import SwiftUI

struct ContentView: View {
    var fruits = ["Anggur", "Apel", "jeruk"]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            HStack {
                List(0..<3) { item in
                    SectionFruitView(fruits: fruits)
                }.listStyle(.sidebar)
                    .foregroundColor(.accentColor)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var item: String
    var body: some View {
        Text(item)
    }
}

struct SectionFruitView: View {
    var fruits: [String]
    
    var body: some View {
        Section {
            ForEach(fruits, id: \.self) { fruit in
                Label(fruit, systemImage: "\(fruits.firstIndex(of: fruit) ?? 0).circle.fill" )
            }
        } header: {
            ExtractedView(item: "Fruits")
        }
    }
}
