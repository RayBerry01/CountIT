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
                Spacer()
                // MARK: Top Level Buttons
                //Button 1
                
                HStack() {
                    Button (action: {
                        alignmentType =  alignmentType ==  .trailing  ? .leading : .trailing
                    })
                    {
                       
                        ImageIcon(viewModel: viewModel, imageName:  Constants.Icons.doubleArrow.rawValue)
                            .frame(width: 130, height: 50, alignment: .leading)
                    }
                    //Button 2
                    
                    Button (action: {
                        self.showingSheet.toggle()
                        print(setLimit.digits)
                    })
                    {
                        ImageIcon(viewModel: viewModel, imageName:  Constants.Icons.upArrow.rawValue)
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
                        ImageIcon(viewModel: viewModel, imageName:  Constants.Icons.plusCircle.rawValue)
                            .frame(width: 300, height: 50, alignment: alignmentType)
                            .padding()
                    }
                    Button(action: {
                        numberShown = countITModel.decreaseCount(numberShown: numberShown)
                    }) {

                        ImageIcon(viewModel: viewModel, imageName: Constants.Icons.minusCircle.rawValue)
                            .frame(width: 300, height: 50, alignment: alignmentType)
                    }
                }
            }
        }
    }
}

struct ImageIcon: View {
    @ObservedObject private(set) var viewModel:ContentViewModel
  
    @State var alignmentType : Alignment = .trailing
    @State var imageName: String
    var body: some View {
        VStack{
            Image(systemName: imageName)
            .foregroundColor(viewModel.imageFontColor())
            .font(viewModel.imageFontSize())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel(), setLimit: 0)
    }
}
