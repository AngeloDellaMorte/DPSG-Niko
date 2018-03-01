//
//  ChildModel.swift
//  DPSG Niko 2
//
//  Created by Christian Natrop on 27.02.18.
//  Copyright © 2018 Christian Natrop. All rights reserved.
//

import Foundation

struct ChildModel: Codable {
    let id: Int
    let prename: String
    let surname: String
    let dateofbirth: String
    let diseases: String
    let abletoswim: Int
    let swimmingbadge: String
    let agegroup: Int
    
    /// Overriding the property names, with custom property names
    /// when the json field is different, requires defining a `CodingKeys`
    /// enum and providing a case for each property. The case itself should
    /// match the property, and its rawValue of type string, should correspond
    /// to the JSON field name.
    enum CodingKeys: String, CodingKey {
        case id
        case prename
        case surname
        case dateofbirth
        case diseases
        case abletoswim
        case swimmingbadge
        case agegroup
    }
}
