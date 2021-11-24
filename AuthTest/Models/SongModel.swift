//
//  SongModel.swift
//  AuthTest
//
//  Created by Владислав Сизонов on 24.11.2021.
//

import Foundation

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
