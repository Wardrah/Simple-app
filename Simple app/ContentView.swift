//
//  ContentView.swift
//  Simple app
//
//  Created by Leteef Wyatt on 11/29/21.
//

import SwiftUI

struct ContentView: View {
    @State private var Yes = false
    @State private var No = false
    
    func clear1(){
        No = false
    }
    
    func clear2(){
        Yes = false
    }
    
    var body: some View {
        
        
        ZStack {
            Color.blue .ignoresSafeArea()
            
            VStack{
                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .padding([.top,.leading, .bottom, .trailing])
                    .frame(width: 390.0, height: 300.0)
                    .foregroundColor(Color.white)
                Button("Yes") {
                    
                    clear1()
                    Yes = true
                    
                } //: BUTTON
                .frame(width: 60.0, height: 50.0).background(Color.white)
                Button("No") {
                    No.toggle()
                    clear2()
                    
                } //: BUTTON
                .frame(width: 50.0, height: 50.0).background(Color.white)
                
                if Yes {
                    
                    Text("Why do you feel that way?")
                    
                }
                
                if No {
                    Text("Im sorry to hear that 🥲")
                    
                }
            } //: VSTACK
            Text("Do you enjoy this app?\n Please select yes or no!")
                .font(.largeTitle)
                .foregroundColor(Color.black)
            
        } //: ZSTACK
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
