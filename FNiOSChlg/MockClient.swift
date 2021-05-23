//
//  MockClient.swift
//  FNiOSChlg
//
//  Created by Jessica Watts on 5/23/21.
//

import Foundation

public class MockClient {
    public func getFeed() -> [FeedItem] {
        return buildFeed()
    }

    private func buildFeed() -> [FeedItem] {
        var items = [FeedItem]()
        Style.allCases.forEach {
            let max = Int.random(in: 1 ... 10)
            for i in 0..<max {
                let item = FeedItem(style: $0, headline: "Headline #\(i+1) for  \($0)")
                items.append(item)
            }
        }
        return items
    }
}
