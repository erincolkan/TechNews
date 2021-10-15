//
//  GNewsResponse.swift
//  TechNews
//
//  Created by Erinç Olkan Dokumacıoğlu on 10.10.2021.
//

import Foundation

// MARK: - GNewsResponse
struct GNewsResponse: Codable {
    let data: GNewsResponseBody
    
    init(data: GNewsResponseBody) {
        self.data = data
    }
}

// MARK: - GNewsResponseBody
struct GNewsResponseBody: Codable {
    let totalArticles: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let title, articleDescription, content: String
    let url: String
    let image: String
    let publishedAt: Date
    let source: Source

    enum CodingKeys: String, CodingKey {
        case title
        case articleDescription = "description"
        case content, url, image, publishedAt, source
    }
}

// MARK: - Source
struct Source: Codable {
    let name: String
    let url: String
}
