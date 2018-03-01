//
//  UserModel.swift
//  DPSG Niko 2
//
//  Created by Christian Natrop on 27.02.18.
//  Copyright © 2018 Christian Natrop. All rights reserved.
//

import Foundation

struct UserModel: Codable {
    let id: Int
    let uiid: Int
    let login: String
    let email: String
    let registered: String
    let status: Int
    let profileimg: String
    let role: String
    let prename: String
    let surname: String
    let street: String
    let city: String
    let postcode: String
    let landline_number: String
    let cellphone_number: String
    
    /// Overriding the property names, with custom property names
    /// when the json field is different, requires defining a `CodingKeys`
    /// enum and providing a case for each property. The case itself should
    /// match the property, and its rawValue of type string, should correspond
    /// to the JSON field name.
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case uiid
        case login = "user_login"
        case email = "user_email"
        case registered = "user_registered"
        case status = "user_status"
        case profileimg = "user_profileimg"
        case role = "accounttype"
        case prename
        case surname
        case street
        case city
        case postcode
        case landline_number
        case cellphone_number
    }
}
