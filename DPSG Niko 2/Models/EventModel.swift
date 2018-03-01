//
//  EventModel.swift
//  DPSG Niko 2
//
//  Created by Christian Natrop on 27.02.18.
//  Copyright © 2018 Christian Natrop. All rights reserved.
//

import Foundation

struct Event: Codable {
    let id: Int
    let optionsID: Int
    let name: String
    let description: String
    let startdate: String
    let enddate: String
    let deadline: String
    let price: Int
    let debit: Bool
    let groups: Bool
    let emergency: Bool
    let swimming: Bool
    let behaviour: Bool
    let immunization: Bool
    let woelflinge: Bool
    let jungpfadfinder: Bool
    let pfadfinder: Bool
    let rover: Bool
    let leiter: Bool
    let mand_option_misc1: Bool
    let text_option_misc1: String
    let mand_option_misc2: Bool
    let text_option_misc2: String
    let mand_option_misc3: Bool
    let text_option_misc3: String
    let mand_option_misc4: Bool
    let text_option_misc4: String
    let mand_option_misc5: Bool
    let text_option_misc5: String
    
    /// Overriding the property names, with custom property names
    /// when the json field is different, requires defining a `CodingKeys`
    /// enum and providing a case for each property. The case itself should
    /// match the property, and its rawValue of type string, should correspond
    /// to the JSON field name.
    enum CodingKeys: String, CodingKey {
        case id
        case optionsID = "optionsid"
        case name
        case description
        case startdate
        case enddate
        case deadline
        case price
        case debit
        case groups
        case emergency
        case swimming
        case behaviour
        case immunization
        case woelflinge
        case jungpfadfinder
        case pfadfinder
        case rover
        case leiter
        case mand_option_misc1
        case text_option_misc1
        case mand_option_misc2
        case text_option_misc2
        case mand_option_misc3
        case text_option_misc3
        case mand_option_misc4
        case text_option_misc4
        case mand_option_misc5
        case text_option_misc5
    }
}
