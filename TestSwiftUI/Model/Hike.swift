//
//  Hike.swift
//  TestSwiftUI
//
//  Created by Mitya Kim on 7/13/22.
//

import Foundation

struct Hike {
    
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Sal", imageURL: "sal", miles: 6),
            Hike(name: "Kat", imageURL: "cat", miles: 5.8),
            Hike(name: "Dana", imageURL: "dana", miles: 5),
        ]
    }
}
