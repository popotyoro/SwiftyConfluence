import SwiftyAtlassian

public struct Page {}
public extension Atlassian.Confluence where Atlassian.Infra == Server, Service == Content {
    func create(page: Page) {}
}
