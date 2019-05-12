//
//  Page.swift
//  SwiftyConfluence
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public struct Page {
    public let title: String
    public let body: String
    public let url: URL
    public let spaceKey: String
    public let ancestorsKey: String?
    
    public init(title: String, body: String, url: URL, spaceKey: String, ancestorsKey: String?) {
        self.title = title
        self.body = body
        self.url = url
        self.spaceKey = spaceKey
        self.ancestorsKey = ancestorsKey?.isEmpty == true ? nil : ancestorsKey
    }
}
