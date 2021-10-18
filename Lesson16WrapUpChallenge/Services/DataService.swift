//
//  DataService.swift
//  Lesson16WrapUpChallenge
//
//  Created by Ryan Christian De Guzman on 10/17/21.
//

import Foundation
class DataService {
    static func getLocalData() -> [StructureQuotes] {
        
        //Get URL path to a json file
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        //Check if pathString is nil, otherwise
        guard pathString != nil else {
            return [StructureQuotes]()
        }
        
        //create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //Create a data object
            let data = try Data(contentsOf: url)
            
            do {
                //Decode the data with Json Decoder
                let decoder = JSONDecoder()
                var quotesdata = try decoder.decode([StructureQuotes].self, from: data)
                
                for index in 0..<quotesdata.count {
                    quotesdata[index].id = UUID()
                }
                
                return quotesdata
            } catch {
                print(error)
            }
            
            
        } catch {
            print(error)
        }
        
        return [StructureQuotes]()
    }
    
}
