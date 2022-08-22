//
//  ContentView.swift
//  CountIT
//
//  Created by Ray Berry on 11/10/2021.
//

import SwiftUI


struct ContentView: View {
    var viewModel = ContentViewModel()
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
                Spacer()
                // MARK: Top Level Buttons
                //Button 1
                
                HStack() {
                    Button (action: {
                        alignmentType =  alignmentType ==  .trailing  ? .leading : .trailing
                    })
                    {
                        
                        Image(systemName: Constants.Icons.doubleArrow.rawValue)
                            .foregroundColor(viewModel.imageFontColor())
                            .font(viewModel.imageFontSize())
                            .frame(width: 130, height: 50, alignment: .leading)
                    }
                    //Button 2
                    
                    Button (action: {
                        self.showingSheet.toggle()
                        print(setLimit.digits)
                    })
                    {
                        
                        Image(systemName: Constants.Icons.upArrow.rawValue)
                            .foregroundColor(viewModel.imageFontColor())
                            .font(viewModel.imageFontSize())
                            .frame(width: 165, height: 50, alignment: .trailing)
                            .sheet(isPresented: $showingSheet) {
                                
                                SetLimitView(setLimit: $setLimit,selection: selection)
                            }
                    }
                }
                .padding()
                Spacer()
                
                //MARK: Main Text
                
                VStack(spacing: -20) {
                    
                    Text("                      \(setLimit)")
                    
                        .font(.system(size: 20.0)
                              
                        )
                    
                    Text("\(numberShown)")
                        .font(.system(size: 110.0))
                        .bold()
                }
                
                //MARK: Bottom buttons
                VStack(spacing: 50) {
                    Button(action: {
                        numberShown = countITModel.increaseCount(maxNumber: maxNumber, numberShown: numberShown)
                    }) {
                        
                        // Plus and Minus buttons
                        Image(systemName: Constants.Icons.plusCircle.rawValue)
                            .foregroundColor(viewModel.imageFontColor())
                            .font(viewModel.imageFontSize())
                            .frame(width: 300, height: 50, alignment: alignmentType)
                        
                            .padding()
                    }
                    Button(action: {
                        numberShown = countITModel.decreaseCount(numberShown: numberShown)
                    }) {
                        Image(systemName:
                                Constants.Icons.minusCircle.rawValue)
                            .foregroundColor(viewModel.imageFontColor())
                            .font(viewModel.imageFontSize())
                            .frame(width: 300, height: 50, alignment: alignmentType)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(setLimit: 0)
    }
}
