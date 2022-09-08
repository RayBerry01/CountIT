//
//  ContentView.swift
//  CountIT
//
//  Created by Ray Berry on 11/10/2021.
//

import SwiftUI
struct ContentView: View {
    
    @ObservedObject private(set) var viewModel:ContentViewModel
   
    var countITModel = CountITModel()
    @State var numberShown = CountITModel().numberShown 
    var maxNumber = CountITModel().maxNumber
    // sets initial Limit
    @State var setLimit = CountITModel().setLimit
    @State var alignmentType : Alignment = .trailing
    @State var showingSheet: Bool = false
    @State var selection = ["0","0","0"]
    
    // Main body
    var body: some View {
        
        ZStack {
            viewModel.determineBackgroundColor(numberShown: numberShown, setLimit: setLimit).ignoresSafeArea()
            
            VStack() {
                ScrollView {
                Spacer()
                // MARK: Top Level Buttons
                HStack() {
                    Button (action: {
                        alignmentType =  alignmentType ==  .trailing  ? .leading : .trailing
                    })
                    {
                       
                        ImageIcon(viewModel: viewModel, imageName:  Constants.Icons.doubleArrow.rawValue, accessibilityText: Constants.AccessibilityText.switchSides.rawValue )
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                 
                    
                    Button (action: {
                        self.showingSheet.toggle()
                        print(setLimit.digits)
                    })
                    {
                        ImageIcon(viewModel: viewModel, imageName:  Constants.Icons.upArrow.rawValue, accessibilityText: Constants.AccessibilityText.setLimit.rawValue )
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .sheet(isPresented: $showingSheet) {
                                SetLimitView(setLimit: $setLimit,selection: selection)
                            }
                    }
                }
                Spacer(minLength:50)
                
                //MARK: Main Text
                
                VStack() {
                    
                    Text("                      \(setLimit)")
                        .font(.system(size: 20.0)
                        )
                    
                    Text("\(numberShown)")
                        .font(.system(size: 110.0))
                        .bold()
                }
                
                //MARK: Bottom buttons
                Spacer(minLength:5)
                    VStack() {
                    Button(action: {
                        numberShown = countITModel.increaseCount(maxNumber: maxNumber, numberShown: numberShown)
                    }) {
                        
                        // Plus and Minus buttons
                        ImageIcon(viewModel: viewModel, imageName:  Constants.Icons.plusCircle.rawValue, accessibilityText: Constants.AccessibilityText.incrementCount.rawValue)
                            .frame(maxWidth: .infinity, alignment: alignmentType)
                          
                    }
                    Spacer(minLength: 50)
                    Button(action: {
                        numberShown = countITModel.decreaseCount(numberShown: numberShown)
                    }) {

                        ImageIcon(viewModel: viewModel, imageName: Constants.Icons.minusCircle.rawValue, accessibilityText: Constants.AccessibilityText.reduceCount.rawValue)
                            .frame(maxWidth: .infinity, alignment: alignmentType)
                           
                    }
                }
            }
        }
            .padding()
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel(), setLimit: 0)
    }
}
