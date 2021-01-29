//
//  SearchModel.swift
//  GiphySample
//
//  Created by Mohamed Afsar on 06/12/20.
//

import Foundation

public struct SearchModel: Decodable, CustomStringConvertible {
    public let data: [GifModel]
    
    public var description: String {
        """
        data: \(data)
        """
    }
}
