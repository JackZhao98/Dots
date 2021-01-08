//
//  ContentView.swift
//  Shared
//
//  Created by Jack Zhao on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var tapped = false
    var body: some View {
        ZStack {
            Color.init(UIColor.systemBackground)
                
            ZStack {
                BackCardView()
                    .offset(x: 0, y: tapped ? -200 : -40)
                    .scaleEffect(0.9)
                    .rotationEffect(.degrees(tapped ? 0 : 10))
                    .animation(.easeInOut(duration: 0.5))
                BackCardView()
                    .offset(x: 0, y:tapped ? -100 : -20)
                    .scaleEffect(0.95)
                    .rotationEffect(.degrees(tapped ? 0 : 5))
                    .animation(.easeInOut(duration: 0.3))
                SingleReceiptView()
                    .onTapGesture {
                        self.tapped.toggle()
                    }
            }
        }.ignoresSafeArea()
            
    }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      Group {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
            .previewDisplayName("iPhone 12 Pro")

         ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
            .previewDisplayName("iPad Pro (9.7-inch)")
      }
   }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)
        .background(Color.init(UIColor.systemGray5))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}



struct circlesView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "largecircle.fill.circle")
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
            Image(systemName: "largecircle.fill.circle")
                .frame(width: 15.0, height: 15.0)
                .foregroundColor(.green)
            Image(systemName: "largecircle.fill.circle")
                .frame(width: 15.0, height: 15.0)
                .foregroundColor(.orange)
            Image(systemName: "largecircle.fill.circle")
                .frame(width: 15.0, height: 15.0)
                .foregroundColor(.red)
            Image(systemName: "largecircle.fill.circle")
                .frame(width: 15.0, height: 15.0)
                .foregroundColor(.purple)
            Image(systemName: "largecircle.fill.circle")
            Spacer()
        }
        .frame(width:240)
        .cornerRadius(20)
    }
}
