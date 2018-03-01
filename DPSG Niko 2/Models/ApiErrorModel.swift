//
//  ApiErrorModel.swift
//  DPSG Niko 2
//
//  Created by Christian Natrop on 27.02.18.
//  Copyright © 2018 Christian Natrop. All rights reserved.
//

import Foundation

struct ApiErrorModel: Codable {
    var type: String
    var message: String
    
    enum CodingKeys: String, CodingKey {
        case type = "error"
        case message = "error_description"
    }
}
