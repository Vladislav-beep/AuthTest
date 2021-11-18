//
//  UserModel.swift
//  AuthTest
//
//  Created by Владислав Сизонов on 18.11.2021.
//

import Foundation

struct User: Codable {
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    let password: String
    let age: Date
}
