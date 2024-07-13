//
//  Extensions.swift
//  ToDoList
//
//  Created by Grace Co on 2024-07-12.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with:data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
