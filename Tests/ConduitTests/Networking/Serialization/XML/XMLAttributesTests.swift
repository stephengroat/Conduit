//
//  XMLAttributesTests.swift
//  Conduit
//
//  Created by Eneko Alonso on 9/6/18.
//  Copyright © 2018 MINDBODY. All rights reserved.
//

import XCTest
import Conduit

class XMLAttributesTests: XCTestCase {

    // swiftlint:disable line_length
    let xmlString = """
        <?xml version="1.0" encoding="utf-8"?>
        <document initialViewController="Crs-vt-zh3" toolsVersion="13196" propertyAccessControl="none" colorMatched="YES" version="3.0" targetRuntime="iOS.CocoaTouch" useAutolayout="YES" useTraitCollections="YES" type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB">
            <device id="ipad9_7" orientation="landscape">
                <adaptation id="fullscreen"/>
            </device>
            <dependencies>
                <deployment identifier="iOS"/>
                <plugIn version="13173" identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin"/>
                <capability name="Constraints to layout margins" minToolsVersion="6.0"/>
                <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
            </dependencies>
        </document>

        """
    // swiftlint:enable line_length

    func testXMLAttributes() {
        let xml = XML(xmlString)
        XCTAssertEqual(xml?.xmlString(format: .prettyPrinted(spaces: 4)), xmlString)
    }
}
