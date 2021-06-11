//
//  ContentView.swift
//  Practice
//
//  Created by Eduard Zepciuc on 10.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var i = 0
    @State var storyTime = 0.0
    
    var content = ["1Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus sodales dolor a elementum. Aliquam posuere quis nibh vitae consequat. Phasellus condimentum massa mauris, ut aliquet turpis pellentesque et","2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus sodales dolor a elementum. Aliquam posuere quis nibh vitae consequat. Phasellus condimentum massa mauris, ut aliquet turpis pellentesque et"]
    
    var body: some View {
        VStack{
            scenery
                .overlay(textBox
                            .foregroundColor(.black)
                            .opacity(storyTime)
                         ,alignment: .bottomTrailing)
        }
    }
    var scenery: some View{
        Image("park").aspectRatio(contentMode: .fit).frame(maxWidth: 350.0, maxHeight: 600).onTapGesture {
            storyTime = 1.0
        }
            
            
    }
   
    var textBox: some View{
        RoundedRectangle(cornerRadius: 0)
            .opacity(0.8)
            .padding(.all, 0.0)
            .frame(height: 206.0)
            .overlay(Text(content[i])
                        .padding().foregroundColor(.white), alignment: .topLeading)
            .onTapGesture {
                i += 1
            }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
