//
//  ContentView.swift
//  RedactedDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    @State private var isRedacted: Bool = true
    var body: some View {
        VStack {
            if isRedacted {
                CreditCardView()
                    .redacted(reason: .placeholder)
            } else {
                CreditCardView()
            }
            
            Button {
                isRedacted.toggle()
            } label: {
                Text(isRedacted ? "Show" : "Hide")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
