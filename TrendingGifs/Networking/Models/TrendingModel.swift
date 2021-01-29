//
//  TrendingModel.swift
//  GiphySample
//
//  Created by Mohamed Afsar on 05/12/20.
//

import Foundation

public struct TrendingModel: Decodable, CustomStringConvertible {
    public let data: [GifModel]
    public let pagination: PaginationModel
    
    public var description: String {
        """
        data: \(data)
        pagination: \(pagination)
        """
    }
}
