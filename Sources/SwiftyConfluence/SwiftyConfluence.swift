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
    struct AccessMode: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Audit: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Content: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ContentBody: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Group: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct LongTask: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Search: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Space: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct User: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public extension Atlassian.Confluence where Infrastructure == Cloud {
    struct Experimental: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Relation: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Settings: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Template: APICategory & ConfluenceAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
