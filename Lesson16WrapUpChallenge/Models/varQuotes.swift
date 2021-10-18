//
//  varQuotes.swift
//  Lesson16WrapUpChallenge
//
//  Created by Ryan Christian De Guzman on 10/17/21.
//

import Foundation
struct StructureQuotes: Decodable, Identifiable {
    
    var id:UUID?
    var name:String = ""
    var keyQuote:String = ""
    var image:String = ""
    var quotes:[String]
}
