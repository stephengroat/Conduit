//
//  AutoPurgingURLImageCacheTests.swift
//  ConduitTests
//
//  Created by John Hammerlund on 7/10/17.
//  Copyright © 2017 MINDBODY. All rights reserved.
//

import XCTest
@testable import Conduit

class AutoPurgingURLImageCacheTests: XCTestCase {

    var mockImageRequest: URLRequest {
        guard let url = URL(string: "http://localhost:3333/image/jpeg") else {
            XCTFail()
            preconditionFailure()
        }
        return URLRequest(url: url)
    }

    var mockImage: Image {
        let path = "Tests/ConduitTests/Networking/Resources/Images/evil_spaceship.png"
        let file = Bundle(for: type(of: self)).path(forResource: "evil_spaceship", ofType: "png") ?? path
        guard let image = Image(contentsOfFile: file) else {
            XCTFail()
            preconditionFailure()
        }
        return image
    }

    func testRetrievesCachedImages() {
        let sut = AutoPurgingURLImageCache()
        let copy = mockImage
        sut.cache(image: copy, for: mockImageRequest)
        let image = sut.image(for: mockImageRequest)
        XCTAssert(image == copy)
    }

    func testGeneratesCacheIdentifiers() {
        let sut = AutoPurgingURLImageCache()
        XCTAssertNotNil(sut.cacheIdentifier(for: mockImageRequest))
    }

    func testRemovesCachedImages() {
        let sut = AutoPurgingURLImageCache()
        sut.cache(image: mockImage, for: mockImageRequest)
        XCTAssertNotNil(sut.image(for: mockImageRequest))
        sut.removeImage(for: mockImageRequest)
        XCTAssertNil(sut.image(for: mockImageRequest))
    }

    func testRemovesAllCachedImagesWhenPurged() throws {
        let sut = AutoPurgingURLImageCache()

        let imageRequests = try (0..<10).map {
            URLRequest(url: try URL(absoluteString: "http://localhost:3333/image/jpeg?id=\($0)"))
        }

        for request in imageRequests {
            sut.cache(image: mockImage, for: request)
        }

        for request in imageRequests {
            XCTAssertNotNil(sut.image(for: request))
        }

        sut.purge()

        for request in imageRequests {
            XCTAssertNil(sut.image(for: request))
        }
    }

}
