//
//  Locations.swift
//  TipsApp
//
//  Created by Eric Baker on 1/27/21.
//

import Foundation

class Locations : ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!  //using ! will crash app if file not found
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
    
//    let id: Int
//    let name: String
//    let country: String
//    let description: String
//    let more: String
//    let latitude: Double
//    let longitude: Double
//    let heroPicture: String
//    let advisory: String
//
//    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "A great place to visit.", more: "more text here", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears!")
}
