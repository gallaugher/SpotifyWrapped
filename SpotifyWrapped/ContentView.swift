//  ContentView.swift
//  SpotifyWrapped
//  Created by John Gallaugher on 12/4/25.
//  YouTube.com/profgallaugher - gallaugher.bsky.social

import SwiftUI

struct ContentView: View {
    @State private var listeningAge: Int = 20
    @State private var realAge: Int = 20
    var body: some View {
        VStack(alignment: .leading) {
            Text("This is the parent view!")
                .font(.title)
            
            RowView(age: $listeningAge, title: "This is my listening age")
            RowView(age: $realAge, title: "This is my real age")
            
            
            Text("Difference between my real age & listening age is:\n\(listeningAge - realAge)")
                .font(.title)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
