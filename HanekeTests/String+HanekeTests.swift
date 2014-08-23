//
//  String+HanekeTests.swift
//  Haneke
//
//  Created by Hermes Pique on 8/11/14.
//  Copyright (c) 2014 Haneke. All rights reserved.
//

import XCTest
import Haneke

class String_HanekeTests: XCTestCase {

    func testMD5() {
        XCTAssertEqual("Haneke".hnk_MD5String(), "aaf750bf2c41f921d0f5c1e9ba36f6f4")
    }
    
}