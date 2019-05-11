import SwiftyAtlassian

public struct Page {}
public extension Atlassian.Confluence where Infrastructure == Server, Category == Content {
    func create(page: Page) {}
}
