//
//  NetworkDataFetcher.swift
//  AuthTest
//
//  Created by Владислав Сизонов on 20.11.2021.
//

import Foundation

class NetworkDataFetcher {
    static let shared = NetworkDataFetcher()
    
    private init() {}
    
    func fetchAlbums(urlString: String, responce: @escaping (AlbumModel?, Error?) -> Void) {
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(AlbumModel.self, from: data)
                    responce(albums, nil)
                } catch let error {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
                responce(nil, error)
            }
        }
    }
}
