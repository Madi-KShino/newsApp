//
//  Article.swift
//  News
//
//  Created by Madison Shino on 5/30/21.
//

import UIKit

struct TopLevelDictionary: Decodable {
    let totalResults: Int
    let articles: [Article]
}

struct Article: Decodable {
    
    let title: String
    let imageURL: URL?
    let body: String
    let date: String
    let url: URL
    
    private enum CodingKeys: String, CodingKey {
        case title
        case imageURL = "urlToImage"
        case body = "description"
        case date = "publishedAt"
        case url
    }
}
