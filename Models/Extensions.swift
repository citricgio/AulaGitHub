//
//  Extensions.swift
//  ToDoList
//
//  Created by Giovanna Micher on 27/07/23.
//

import Foundation

//encoding it to data
extension Encodable {
    func asDictionary() -> [String: Any] {
        
        //give me data from the current thing that is codable
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        //convert the data to json AKA a dictionary
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
