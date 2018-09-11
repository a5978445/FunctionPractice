//
//  WordFrequencySort.swift
//  FunctionPractice
//
//  Created by 李腾芳 on 2018/9/10.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//

import UIKit

struct WordFrequencySort {
    static var prepositions: [String] {
        return "the and of to a i it in or is d s as so but be".split(separator: " ").map { String($0) }
    }

    static func machesRegularExpression(_ matchString: String, regularExpression: String) throws -> [NSTextCheckingResult] {
        let wordRegularExpression = try NSRegularExpression(pattern: regularExpression, options: .caseInsensitive)

        let result = wordRegularExpression.matches(in: matchString, options: [], range: NSRange(location: 0, length: matchString.count))
        return result
    }

    static func traditionalStyleSortWordsByUseFrequency(_ input: String) throws -> Array<(String, Int)> {
        let matchResult = try machesRegularExpression(input, regularExpression: "\\w+")

        var matchResultDictionary = Dictionary<String, Int>()
        matchResult.forEach { matchElement in

            for currentRange in matchElement.ranges {
                let subString = input.subString(ofRange: currentRange).lowercased()

                if !prepositions.contains(subString) {
                    if let referenceCounting = matchResultDictionary[subString] {
                        matchResultDictionary[subString] = referenceCounting + 1
                    } else {
                        matchResultDictionary[subString] = 1
                    }
                }
            }
        }

        var sortResult = Array<(String, Int)>()
        matchResultDictionary.forEach { element in
            sortResult.append((element.key, element.value))
        }

        sortResult.sort { $0.1 > $1.1 }
        return sortResult
    }

    static func functionStyleSortWordsByUseFrequency(_ input: String) throws -> Array<(String, Int)> {
        let matchResult = try machesRegularExpression(input, regularExpression: "\\w+")

        var sortResult = matchResult.map { $0.ranges } // [[Range]]
            .flatMap { $0 } // [Range]
            .map { input.subString(ofRange: $0).lowercased() } // [String]
            .filter { !prepositions.contains($0) } // [String]
            .convertToDictionary { (dictionary: inout Dictionary<String, Int>, word: String) in
                if let referenceCounting = dictionary[word] {
                    dictionary[word] = referenceCounting + 1
                } else {
                    dictionary[word] = 1
                }
            } // Dictionary<String, Int>
            .convertToArray { array, userName, refrenceCount in
                array.append((userName, refrenceCount))
            } // [(String, Int)]

        sortResult.sort { $0.1 > $1.1 }

        return sortResult
    }
}

extension String {
    func subString(ofRange range: NSRange) -> String {
        let lower = index(startIndex, offsetBy: range.location)
        let upper = index(lower, offsetBy: range.length)

        let subRange = Range<String.Index>.init(uncheckedBounds: (lower: lower, upper: upper))

        return String(self[subRange])
    }
}
