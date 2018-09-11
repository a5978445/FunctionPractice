//
//  Array+Convert.swift
//  FunctionPractice
//
//  Created by 李腾芳 on 2018/9/11.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//

import UIKit

extension Array {
    public func convertToDictionary<K, V>(_ operate: (inout Dictionary<K, V>, Array.Element) -> Void) -> Dictionary<K, V> {
        var result = Dictionary<K, V>()
        forEach { operate(&result, $0) }

        return result
    }
}
