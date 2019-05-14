//
//  SwiftyConfluence.swift
//  SwiftyConfluence
//
//  Created by Takumi Karibe on 2019/05/11.
//

import Foundation
import SwiftyAtlassian

public protocol ConfluenceAPI {}

public extension Atlassian.Confluence {
    class AccessMode: APICategory, ConfluenceAPI {}
    class Audit: APICategory, ConfluenceAPI {}
    class Content: APICategory, ConfluenceAPI {}
    class ContentBody: APICategory, ConfluenceAPI {}
    class Group: APICategory, ConfluenceAPI {}
    class LongTask: APICategory, ConfluenceAPI {}
    class Search: APICategory, ConfluenceAPI {}
    class Space: APICategory, ConfluenceAPI {}
    class User: APICategory, ConfluenceAPI {}
}

public extension Atlassian.Confluence where Infrastructure == Cloud {
    class Experimental: APICategory, ConfluenceAPI {}
    class Relation: APICategory, ConfluenceAPI {}
    class Settings: APICategory, ConfluenceAPI {}
    class Template: APICategory, ConfluenceAPI {}
}
