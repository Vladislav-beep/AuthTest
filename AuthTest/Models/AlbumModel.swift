//
//  AlbumModel.swift
//  AuthTest
//
//  Created by Владислав Сизонов on 19.11.2021.
//

import Foundation


struct AlbumModel: Decodable, Equatable {
    let results: [Album]
}

struct Album: Decodable, Equatable {
    let artistName: String
    let collectionName: String
    let artworkUrl100: String?
    let trackCount: Int
    let releaseDate: String
}
