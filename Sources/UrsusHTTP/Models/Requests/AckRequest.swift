//
//  AckRequest.swift
//  Ursus
//
//  Created by Daniel Clelland on 7/06/20.
//

import Foundation

internal struct AckRequest: Encodable {

    var id: Int
    var action: String = "ack"
    var eventID: Int
    
    enum CodingKeys: String, CodingKey {
        case action
        case eventID = "event-id"
    }
    
}
