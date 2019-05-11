import SwiftyAtlassian

public struct Page {}
public extension Atlassian.Confluence where Infra == Server, Category == Content {
    func create(page: Page) {}
}
