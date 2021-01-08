//
//  ContentView.swift
//  Shared
//
//  Created by Jack Zhao on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            BackCardView()
                .offset(x: 0, y:-40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
            BackCardView()
                .offset(x: 0, y:-20)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: 5))
            ReceiptView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      Group {
         ContentView()
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
        
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
        
    }
}

struct ReceiptView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Bill Title")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .foregroundColor(.black)
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.blue)
                    }
                    Text("01-06-2021")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("$149.99")
                    .font(.system(.largeTitle, design:.rounded))
                    .bold()
            }
            .padding()
            Spacer()
            HStack {
                Spacer()
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                Circle()
                    .frame(width: 15.0, height: 15.0)
                    .foregroundColor(.green)
                Circle()
                    .frame(width: 15.0, height: 15.0)
                    .foregroundColor(.orange)
                Circle()
                    .frame(width: 15.0, height: 15.0)
                    .foregroundColor(.red)
                Circle()
                    .frame(width: 15.0, height: 15.0)
                    .foregroundColor(.purple)
                Spacer()
            }.padding(.bottom)
            
        }
        .frame(width: 340, height: 220)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}
