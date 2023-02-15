//
//  ContentView.swift
//  TextDealApp
//
//  Created by Trung Luu on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State var password = "1234"
    @State var someText = "initial text"
    
    var body: some View {
        VStack {
            Text("Hello World")
                .fontWeight(.medium)
                .padding()
            SecureField("Enter a password", text: $password)
                .padding()
            Text("password entered: \(password)")
                .italic()
                .padding()
            SecureField("Enter some text", text: $someText)
                .padding()
            Text("\(someText)")
                .font(.largeTitle)
                .underline()
            Text("Changing color to make it bold.")
                .foregroundColor(.blue)
                .bold()
            Text("Use kerning to change space between lines of text")
                .kerning(7)
                .padding()
            Text("Changing baseline of text")
                .baselineOffset(100)
                .padding()
            Text("Strikethrough")
                .strikethrough()
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
