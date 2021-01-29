//
//  GifModel.swift
//  GiphySample
//
//  Created by Mohamed Afsar on 05/12/20.
//

import Foundation

// Hashable, Equatable - Adding capability to add this type in a 'Set'
public struct GifModel: Decodable, CustomStringConvertible, Hashable, Equatable {
    public let id: String
    public let title: String
    public let images: GifImagesModel
    
    public var description: String {
        """
        id: \(id)
        title: \(title)
        images: \(images)
        """
    }
}
