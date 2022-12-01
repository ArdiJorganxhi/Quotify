//
//  ContentView.swift
//  Quotify
//
//  Created by Ardi Jorganxhi on 28.11.22.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating: Bool = false
    @State private var isCategory: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
            
                VStack(spacing: 20){
                    Spacer()
                    
                    VStack(spacing: 0){
                        Text("Quotify.")
                            .font(.system(size: 50))
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        
                        
                    }
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y: isAnimating ? 0 : -40)
                    .animation(.easeOut(duration: 1), value: isAnimating)
                    
                    
                    Spacer()
                    
                    ZStack{
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                        Capsule()
                            .fill(Color.white.opacity(0.2))
                            .padding(8)
                        HStack{
                            Capsule()
                                .fill(Color(.black))
                                .frame(width: buttonOffset + 80)
                            Spacer()
                        }
                        
                        Text("Get Started!")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(buttonOffset > buttonWidth / 4 ? .white : .black)
                            .offset(x: 20)
                        
                        HStack {
                            ZStack{
                                
                                Circle()
                                    .fill(Color(.black))
                              
                                Image(systemName: "chevron.right.2")
                                    .font(.system(size: 24, weight: .bold))
                                
                            }
                            .foregroundColor(.white)
                            .frame(width: 80, height: 80, alignment: .center)
                            .offset(x: buttonOffset)
                            .gesture(
                                DragGesture()
                                    .onChanged { gesture in
                                        if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                            buttonOffset = gesture.translation.width
                                        }
                                    }
                                    .onEnded{ _ in
                                        
                                        withAnimation(Animation.easeOut(duration: 1.5)){
                                            
                                            
                                            
                                            if buttonOffset > buttonWidth / 2 {
                                                buttonOffset = buttonWidth - 80
                                                
                                                isCategory = true
                                                
                                                
                                            }
                                            else {
                                                buttonOffset = 0
                                                
                                            }
                                        }
                                        
                                    }
                            )
                            Spacer()
                        }
                    }
                    .frame(width: buttonWidth, height: 80, alignment: .center)
                    .padding()
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y: isAnimating ? 0 : 40)
                    .animation(.easeOut(duration: 1), value: isAnimating)
                } // VStack
            } // ZStack
            .onAppear(perform: {
                isAnimating = true
                
                
            })
            .navigationDestination(isPresented: $isCategory){
                CategoryView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
