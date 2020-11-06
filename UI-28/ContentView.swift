//
//  ContentView.swift
//  UI-28
//
//  Created by にゃんにゃん丸 on 2020/11/06.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = "Your story now"
    @State var color :Color = .black
    var body: some View {
        NavigationView{
            
             TextEditor(text: $text)
                .padding()
                .navigationBarItems(leading: ColorPicker("", selection: $color))
                
                .navigationBarTitle("color")
                .foregroundColor(color)
                .onTapGesture {
                    hidekeybord()
                }
   
                
         
        }
    }
}

extension View{
    
    func hidekeybord(){
        
        
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
