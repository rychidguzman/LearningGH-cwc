//
//  QuotesModel.swift
//  Lesson16WrapUpChallenge
//
//  Created by Ryan Christian De Guzman on 10/17/21.
//

import Foundation
class MyQuotes: ObservableObject{
    @Published var quotes:[StructureQuotes] = [StructureQuotes]()
    
    init() {
        
        quotes = DataService.getLocalData()
    }
    
}
