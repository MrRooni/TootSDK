// Created by konstantin on 20/01/2023.
// Copyright (c) 2023. All rights reserved.

import Foundation

public struct TootContent {
    public init(wrappedValue: String, plainContent: String, attributedString: NSAttributedString, systemAttributedString: NSAttributedString) {
        self.wrappedValue = wrappedValue
        self.string = plainContent
        self.attributedString = attributedString
        self.systemAttributedString = systemAttributedString
    }
    
    /// The content value received from the server where special content like emoji :codes codes have been replaced with HTML <img> tags
    public var wrappedValue: String
    
    /// A plain text string generated by stripping all HTML formatting. This form excludes images and other content which can't be represented as plain text.
    public var string: String
    
    /// An instance of `NSAttributedString` created by parsing the HTML string and accounting for fediverse specific content like :emojis, tags, mentiones and others. Use the `NSAttributedString.string` field to access a plain-text representation which includes emoji codes. Images are not included in this representation.
    public var attributedString: NSAttributedString
    
    
    public var systemAttributedString: NSAttributedString
}
