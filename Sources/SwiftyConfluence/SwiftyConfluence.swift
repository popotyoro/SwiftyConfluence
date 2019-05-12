//
//  SwiftyConfluence.swift
//  SwiftyConfluence
//
//  Created by Takumi Karibe on 2019/05/11.
//

import Foundation
import SwiftyAtlassian
import Confluence
import Model

public extension Atlassian.Confluence where Infrastructure == Server, Category == Content {
    func create(page: Page) {
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["type"] = "page"
            body["title"] = page.title
            body["space"] = ["key": page.spaceKey]
            if let ancestorsKey = page.ancestorsKey {
                body["ancestors"] = [["id": ancestorsKey]]
            }
            body["body"] = ["storage": ["value": page.body, "representation": "storage"]]
            return body
        }()

        let semaphore = DispatchSemaphore(value: 0)
        var request = URLRequest(url: page.url)

        request.allHTTPHeaderFields = header
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            defer { semaphore.signal() }

            guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
                print("⛔️ not found status code")
                return
            }

            if (200...203).contains(statusCode) {
                print("✅ \(String(describing: response))")
            } else {
                print("🚫 statusCode: \(statusCode)")
                if let error = error {
                    print("🚨 error: \(error)")
                }
            }
        }

        task.resume()
        semaphore.wait()
    }
}
