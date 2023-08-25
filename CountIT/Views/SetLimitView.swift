//
//  SetLimitView.swift
//  CountIT
//
//  Created by Ray Berry on 16/10/2021.
//

import SwiftUI

struct SetLimitView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var data: [(String, [String])] = [
        ("One", Array(0...9).map { "\($0)" }),
        ("Two", Array(0...9).map { "\($0)" }),
        ("Three", Array(0...9).map { "\($0)" })
    ]
  
    
    @Binding var setLimit: Int
    @State var selection: [String] = ["0","0","9"]
    
   
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            VStack() {
                ScrollView {
                Spacer()
                Button (action: {
                    
                    presentationMode.wrappedValue.dismiss()
                })
                {
                    
                    Image(systemName: Constants.Icons.xMarkCircle.rawValue)
                        .foregroundColor(.white)
                        .font(.system(size: 80.0)
                              
                        )
                        .frame(maxWidth: .infinity, minHeight: 150, alignment: .trailing)
                    
                    
                }
                
               
                MultiPicker(data: data, selection: $selection).frame(height: 150)
                
                HStack(){
                    Button {
                        
                        let reducedArray = selection.reduce("", +)
                        setLimit = Int(reducedArray) ?? 0
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        Image(systemName: Constants.Icons.upArrow.rawValue)                        .foregroundColor(.white)
                            .font(.system(size: 40.0))
                        Text(Constants.LocalText.setLimit.rawValue)
                            .font( .largeTitle)
                            .foregroundColor(.white)
                    } .frame(maxWidth: .infinity, minHeight: 300, alignment: .center)
                    
                }
            }
              
        }
            .padding()
        }
    }
}



struct SetLimitView_Previews: PreviewProvider {
    @State static var setLimit = CountITModel().maxNumber
    static var previews: some View {
        SetLimitView(setLimit: $setLimit)
        
    }
}
