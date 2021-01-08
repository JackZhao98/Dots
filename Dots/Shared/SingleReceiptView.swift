//
//  SingleReceiptView.swift
//  Dots
//
//  Created by Jack Zhao on 1/8/21.
//

import SwiftUI

struct SingleReceiptView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Bill Title")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.semibold)
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.blue)
                    }
                    Text("01-06-2021")
                        .font(.system(.subheadline, design: .rounded))
                        .foregroundColor(Color.init(UIColor.systemGray))
                }
                Spacer()
                Text("$149.99")
                    .font(.system(.largeTitle, design:.rounded))
                    .bold()
            }
            .padding()
            Spacer()
            circlesView()
        }
        .frame(width: 340, height: 220)
        .background(Color.init(UIColor.systemGray5))
        .cornerRadius(20)
        .shadow(radius: 20)
        
    }
}

struct SingleReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        SingleReceiptView()
            .preferredColorScheme(.dark)
    }
}
