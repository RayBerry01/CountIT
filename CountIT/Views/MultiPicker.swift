//
//  MultiPicker.swift
//  CountIT
//
//  Created by Ray Berry on 20/10/2021.
//

import SwiftUI

struct MultiPicker: View  {
    
    typealias Label = String
    typealias Entry = String
    
    let data: [ (Label, [Entry]) ]
    @Binding var selection: [Entry]
    
    var body: some View {
        
        VStack {
            
            GeometryReader { geometry in
                HStack () {
                    ForEach(0..<self.data.count) { column in
                        Picker(self.data[column].0, selection: self.$selection[column]) {
                            ForEach(0..<self.data[column].1.count) { row in
                                Text(verbatim: self.data[column].1[row])
                                    .tag(self.data[column].1[row])
                                    .foregroundColor(.black)
                                    .font(Font.headline.weight(.bold))
                                
                            }
                        }
                        
                        .pickerStyle(.wheel)
                        .frame(width: geometry.size.width / CGFloat(self.data.count), height: geometry.size.height)
                        .compositingGroup()
                        .clipped()
                         .padding(.trailing)
                        
                    }
                }
                
            }
        }
    }
}
