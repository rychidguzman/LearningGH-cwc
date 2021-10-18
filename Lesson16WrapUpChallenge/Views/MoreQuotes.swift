//
//  MoreQuotes.swift
//  Lesson16WrapUpChallenge
//
//  Created by Ryan Christian De Guzman on 10/17/21.
//

import SwiftUI

struct MoreQuotes: View {
    var quotes:StructureQuotes
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                Text(quotes.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                ForEach(quotes.quotes, id: \.self) { r in
                    Text("- " + r)
                        .padding(.vertical, 2.0)
                    
                }
            }
        }
        
        
        
    }
}

struct MoreQuotes_Previews: PreviewProvider {
    static var previews: some View {
        MoreQuotes(quotes: StructureQuotes(name: "Marie Curie", keyQuote: "Hello WOlrd", image: "reflect2", quotes: ["Hello","World","hello"]))
    }
}
