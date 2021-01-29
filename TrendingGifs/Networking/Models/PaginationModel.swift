//
//  PaginationModel.swift
//  GiphySample
//
//  Created by Mohamed Afsar on 05/12/20.
//

import Foundation

public struct PaginationModel: Decodable, CustomStringConvertible {
    let offset: Int32
    let total_count: Int32
    let count: Int32
    
    public var description: String {
        """
        offset: \(offset)
        total_count: \(total_count)
        count: \(count)
        """
    }
}
