//
//  LinedDots.swift
//  Dots
//
//  Created by Jack Zhao on 1/7/21.
//

import SwiftUI

struct DotItem: Hashable, Identifiable {
    
    var id = UUID()  // Conform to Identifiable
    var selected: Bool
    var isInitiator: Bool
    var color: Color
    
    init(selected: Bool = false, isInitiator: Bool = false, color: Color) {
        self.selected = selected
        self.isInitiator = isInitiator
        self.color = color
    }
}

struct SingleDotView: View {
    var dot: DotItem
    var withRing: Bool
    
    init(dot: DotItem, withRing: Bool = false) {
        self.dot = dot
        self.withRing = withRing
    }
    var body: some View {
        let defaultDotSize = CGFloat(25)
        let pressedDotSize = CGFloat(15)
        let ringStroke = CGFloat(10)
        ZStack {
            if (withRing) {
                Image(systemName: "circle.fill")
                    .foregroundColor(.white)
                    .font(.system(size: dot.selected ? pressedDotSize + ringStroke : defaultDotSize + ringStroke))
                
            }
            Image(systemName: "circle.fill")
                .foregroundColor(self.dot.color)
                .font(.system(size: dot.selected ? pressedDotSize : defaultDotSize))
        }
            
    }
}

struct SingleDotView_Previews: PreviewProvider {
    static var previews: some View {
        SingleDotView(dot: DotItem(color: .blue), withRing: false)
            .previewLayout(PreviewLayout.sizeThatFits)
            .padding()
    }
}
