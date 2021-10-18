//
//  ContentView.swift
//  Lesson16WrapUpChallenge
//
//  Created by Ryan Christian De Guzman on 10/17/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataQuotes:MyQuotes = MyQuotes()
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                ForEach(dataQuotes.quotes) { r in
                NavigationLink{
                    MoreQuotes(quotes: r)
                } label: {
                    VStack {
                            
                            ZStack {
                                Image(r.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 350, alignment: .center)
                                    .clipped()
                                .cornerRadius(20)
                                
                                VStack(alignment: .leading) {
                                    Text(r.keyQuote)
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                    Text("- " + r.name)
                                        .font(.headline)
                                        
                                }
                                .frame(width: 300, height: 300, alignment: .center)
                                .foregroundColor(.white)
                                
                            }
                        }
                }
            }
            
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
