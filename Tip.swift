//
//  Tip.swift
//  TipsApp
//
//  Created by Eric Baker on 1/28/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
