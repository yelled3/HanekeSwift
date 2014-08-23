//
//  String+Haneke.swift
//  Haneke
//
//  Created by Hermes Pique on 8/11/14.
//  Copyright (c) 2014 Haneke. All rights reserved.
//

import Foundation
import CommonCrypto

public extension String {
    
    func hnk_MD5String() -> String {
        if let data = self.dataUsingEncoding(NSUTF8StringEncoding)
        {
            let result = NSMutableData(length: Int(CC_MD5_DIGEST_LENGTH))
            let resultBytes = UnsafeMutablePointer<CUnsignedChar>(result.mutableBytes)
            CC_MD5(data.bytes, CC_LONG(data.length), resultBytes)
            let resultEnumerator = UnsafeBufferPointer<CUnsignedChar>(start: resultBytes, length: result.length)
            let MD5 = NSMutableString()
            for c in resultEnumerator {
                MD5.appendFormat("%02x", c)
            }
            return MD5
        }
        return ""
    }
}
