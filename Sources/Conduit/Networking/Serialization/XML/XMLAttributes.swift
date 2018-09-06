//
//  XMLAttributes.swift
//  Conduit
//
//  Created by Eneko Alonso on 9/6/18.
//  Copyright © 2018 MINDBODY. All rights reserved.
//

import Foundation

/// Convenience alias for node attribute.
public typealias XMLAttribute = (key: String, value: String?)

/// Collection of XML node attribute key/value pairs.
/// Preserves order of attributes and supports subscripting.
public class XMLAttributes {

    private var attributes: [XMLAttribute] = []

    /// Make a new instance of XML attributes
    ///
    /// - Parameter attributes: collection of key/value pairs
    public init(attributes: [XMLAttribute] = []) {
        self.attributes = attributes
    }

    init(attributeDict: [String: String?]) {
        attributes = attributeDict.map { $0 }
    }

    /// Read/write attributes by key
    ///
    /// - Parameter key: attribute key
    public subscript(key: String) -> String? {
        get {
            return attributes.first { $0.key == key }?.value
        }
        set {
            if let index = attributes.index(where: { $0.key == key }) {
                attributes.remove(at: index)
            }
            attributes.append((key: key, value: newValue))
        }
    }

    /// Determine if the collection of attributes is empty
    public var isEmpty: Bool {
        return attributes.isEmpty
    }

}

// MARK: - Serialization

extension XMLAttributes {
    var describedAttributes: String {
        let described = attributes.map { attribute -> String in
            guard let value = attribute.value else {
                return attribute.key
            }
            return "\(attribute.key)=\"\(value)\""
        }
        return described.joined(separator: " ")
    }
}

// MARK: - Equatable

extension XMLAttributes: Equatable {
    /// Compare two XMLAttribute instances. Ignores attribute order.
    ///
    /// - Parameters:
    ///   - lhs: First attribute set to compare
    ///   - rhs: Second attribute set to compare
    /// - Returns: Comparison result
    public static func == (lhs: XMLAttributes, rhs: XMLAttributes) -> Bool {
        return lhs.dictionary == rhs.dictionary
    }

    /// Compare a set of attributes against a dictionary. Ignores attribute order.
    ///
    /// - Parameters:
    ///   - lhs: First attribute set to compare
    ///   - rhs: Dictionary of attributes to compare against
    /// - Returns: Comparison result
    public static func == (lhs: XMLAttributes, rhs: [String: String?]) -> Bool {
        return lhs.dictionary == rhs
    }

    var dictionary: [String: String?] {
        return Dictionary.init(uniqueKeysWithValues: attributes)
    }
}
