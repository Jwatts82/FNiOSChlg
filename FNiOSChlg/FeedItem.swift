//
//  FeedItem.swift
//  FNiOSChlg
//
//  Created by Jessica Watts on 5/23/21.
//

import Foundation

public enum Style: CaseIterable {
    case bigTop
    case river
    case ad
    case houseAd
    case slideshow
}

public struct FeedItem {
    
    public let style: Style
    public let headline: String
//        public let image: String?
}
