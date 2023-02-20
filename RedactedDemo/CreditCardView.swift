//
//  CreditCardView.swift
//  RedactedDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct CreditCardView: View {
    @Environment(\.redactionReasons) var redactionReasons
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Text("Credit Card")
                    .font(.system(size: 26, weight: .semibold, design: .rounded))
                Spacer()
                Image(systemName: "wave.3.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
            }
            .unredacted()
            
            HStack {
                Spacer()
                VStack(alignment: .leading, spacing: 6) {
                    Text(redactionReasons.contains(.privacy) ? "**** **** **** ****" : "0000 1111 2222 3333")
                        .font(.system(size: 22, weight: .semibold, design: .monospaced))
                    HStack {
                        Text("Valid thru: \(redactionReasons.contains(.privacy) ? "**/**" : "08/25")")
                            .font(.system(size: 12, weight: .medium))
                        Spacer()
                        Text(redactionReasons.contains(.privacy) ? "****" : "1234")
                    }
                }
                Spacer()
            }
            
            HStack {
                Text(redactionReasons.contains(.privacy) ? "Mario Rossi" : "Davide Troise")
                    .font(.system(size: 18, weight: .medium, design: .monospaced))
                Spacer()
                Image(systemName: "circlebadge.2")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
            }
        }
        .foregroundColor(.white)
        .padding()
        .background(
            LinearGradient(colors: [.cyan, .blue], startPoint: .top, endPoint: .bottom)
        )
        .overlay {
            RoundedRectangle(cornerRadius: 6).stroke(.secondary, lineWidth: 1)
        }
        .cornerRadius(6)
        .shadow(radius: 5)
        .padding()
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}
