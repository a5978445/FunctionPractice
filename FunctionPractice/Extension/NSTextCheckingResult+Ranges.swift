//
//  NSTextCheckingResult+Ranges.swift
//  FunctionPractice
//
//  Created by 李腾芳 on 2018/9/11.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//

import UIKit

extension NSTextCheckingResult {
    public var ranges: [NSRange] {
        var result = [NSRange]()
        for i in 0 ..< numberOfRanges {
            let currentRange = range(at: i)
            result.append(currentRange)
        }
        return result
    }
}
