//
//  Dictionary+Convert.swift
//  FunctionPractice
//
//  Created by 李腾芳 on 2018/9/11.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//

import UIKit

extension Dictionary {
    public func convertToArray<T>(_ operate: (inout Array<T>, Dictionary.Key, Dictionary.Value) -> Void) -> Array<T> {
        var array = Array<T>()

        forEach { key, value in
            operate(&array, key, value)
        }

        return array
    }
}
