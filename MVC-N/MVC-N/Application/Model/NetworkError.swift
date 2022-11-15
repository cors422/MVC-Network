//
//  NetworkError.swift
//  MVC-N
//
//  Created by Дмитрий Никольский on 14.11.2022.
//

import Foundation

enum NetworkError: Error {
    case failInternetConnection
    case noInternetConnection
}
