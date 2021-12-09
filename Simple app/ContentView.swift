//
//  ContentView.swift
//  Simple app
//
//  Created by Leteef Wyatt on 11/29/21.
//

import SwiftUI
import AVKit
import AVFoundation

struct ContentView: View {
    @State private var Yes = false
    @State private var No = false
    @State private var answer: String = ""
    @State private var thankYou: String = "Thank you for your answer!!"
    @State private var Submit = false
    @State private var clearScreen: String = ""
    @State private var poof = false
    
    
    let badWords = ["nigga", "Nigga","Fuck", "Bitch","Ass"]
    
    func clear1(){
        No = false
    }
    
    func clear2(){
        Yes = false
    }
    
    var body: some View {
        NavigationView {
        
        ZStack {
            Color.blue .ignoresSafeArea()
            
            VStack{
                
                RoundedRectangle(cornerRadius: 10)
                    .padding([.top, .leading, .trailing])
                    .frame(width: 390.0, height: 320.0)
                    .foregroundColor(Color.white)
                Button("Yes") {
                    
                    clear1()
                    Yes = true
                    
                } //: BUTTON
                .frame(width: 60.0, height: 50.0).background(Color.white)
                NavigationLink(destination: VideoView(videoID: "PEnJbjBuxnw")) {
                    Text("No")
                        .frame(width: 50.0, height: 50.0).background(Color.white)
                }
                
//                Button("No") {
//                    No = true
//                    clear2()
//                    Submit = false
//
//                } //: BUTTON
//                .frame(width: 50.0, height: 50.0).background(Color.white)
                
                Button("Clear"){
                    poof = true
                    clear2()
                    clear1()
                    Submit = false
                }  .frame(width: 50.0, height: 50.0).background(Color.white)
                
                
                
            } //: VSTACK
            
            if poof {
                Text(clearScreen)
            }
            if Yes {
                VStack {
                    Text("Why do you feel \n that way?")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                    HStack {
                        Text("Explain: ")
                            .multilineTextAlignment(.center)
                            .padding(.leading)
                        TextField("Explain", text: $answer)
                            .padding(.trailing)
                            .multilineTextAlignment(.center)
                            .disableAutocorrection(true)
                        
                    }
                    .textFieldStyle(.roundedBorder)
                    Button ("Submit"){
                        
                        if badWords.contains(answer) {
                             thankYou = "Give a real answer"
                        } else {thankYou = "Thank you for your answer!!"}
                        
                        Submit = true
                        clear2()
                        clear1()
                        
                    }.padding()
                        .frame(width: 100.0, height: 50.0).background(Color.white)
                    
                    
                    
                }
                
            }
            
            else if Submit {
                Text(thankYou)
                    .font(.title)
                
                
            }
            
            
            else if No {
                
                NavigationLink(destination: VideoView(videoID: "PEnJbjBuxnw")) {
                    Text("Im sorry to hear that 🥲")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                }
                
            }
            
            
            
            else { Text("Do you enjoy this app?\n Please select yes or no!")
                    .font(.largeTitle)
                .foregroundColor(Color.black)}
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        } //: ZSTACK
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
