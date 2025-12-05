//  RowView.swift
//  SpotifyWrapped
//  Created by John Gallaugher on 12/4/25.
//  YouTube.com/profgallaugher - gallaugher.bsky.social

import SwiftUI

struct RowView: View {
    @Binding var age: Int
    let title: String
    var body: some View {
        VStack {
            HStack {
                Text("\(age)")
                    .font(Font.system(size: 40))
                    .bold()
                VStack(alignment: .leading) {
                    Text(title)
                    Stepper("", value: $age, in: 10...99)
                        .labelsHidden()
                }
            }
            .font(.title)
        }
        .padding()
    }
}

#Preview {
    RowView(age: .constant(20), title: "This is the title")
}
