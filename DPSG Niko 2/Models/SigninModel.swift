//
//  SigninModel.swift
//  DPSG Niko 2
//
//  Created by Christian Natrop on 27.02.18.
//  Copyright © 2018 Christian Natrop. All rights reserved.
//

import Foundation

struct SignIn: Codable {
    let id: Int
    let userid: Int
    let childid: Int
    let eventid: Int
    let prename: String
    let surname: String
    let age: Int
    let dateofbirth: String
    let diseases: String
    let miscellaneous: String
    let abletoswim: Bool
    let swimmingbadge: String
    let debit: Bool
    let groups: Bool
    let emergency: Bool
    let swimming: Bool
    let behaviour: Bool
    let immunization: Bool
    let option_misc1: Bool
    let option_misc2: Bool
    let option_misc3: Bool
    let option_misc4: Bool
    let option_misc5: Bool
    
    /// Overriding the property names, with custom property names
    /// when the json field is different, requires defining a `CodingKeys`
    /// enum and providing a case for each property. The case itself should
    /// match the property, and its rawValue of type string, should correspond
    /// to the JSON field name.
    enum CodingKeys: String, CodingKey {
        case id
        case userid = "uid"
        case childid = "cid"
        case eventid = "eid"
        case prename
        case surname
        case age
        case dateofbirth
        case diseases
        case miscellaneous
        case abletoswim
        case swimmingbadge
        case debit
        case groups
        case emergency
        case swimming
        case behaviour
        case immunization
        case option_misc1
        case option_misc2
        case option_misc3
        case option_misc4
        case option_misc5
    }
}
