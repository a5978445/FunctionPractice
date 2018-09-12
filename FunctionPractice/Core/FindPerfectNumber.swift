//
//  FindPerfectNumber.swift
//  FunctionPractice
//
//  Created by 李腾芳 on 2018/9/11.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//

import UIKit

struct FindPerfectNumber {
    struct TraditionalStyle {
        class PerfectNumberFinder {
            let number: Int
            var cache = Dictionary<Int, Int>()

            init(number: Int) {
                self.number = number
            }

            func isFactor(tagetNumber: Int) -> Bool {
                return number % tagetNumber == 0
            }

            func getFactors() -> Set<Int> {
                var factors = Set<Int>()
                for i in 1 ..< number {
                    if isFactor(tagetNumber: i) {
                        factors.insert(i)
                    }
                }
                return factors
            }

            func aliquoSum() -> Int {
                if let sum = cache[number] {
                    return sum
                } else {
                    var sum = 0
                    for i in getFactors() {
                        sum += i
                    }
                    cache[number] = sum
                    return sum
                }
            }

            func isPerfect() -> Bool {
                return aliquoSum() == number
            }

            func isDeficient() -> Bool {
                return aliquoSum() < number
            }

            func isAbundant() -> Bool {
                return aliquoSum() > number
            }
        }

        static func getPerfectNumbers(numbers: [Int]) -> [Int] {
            var perfectNumbers = [Int]()
            for i in numbers {
                if i > 1 {
                    if PerfectNumberFinder(number: i).isPerfect() {
                        perfectNumbers.append(i)
                    }
                }
            }
            return perfectNumbers
        }
    }

    struct FunctionStyle {
        private static func isPerfect(number: Int) -> Bool {
            let range = 1 ..< number
            return range.filter { number % $0 == 0 }
                .reduce(0, +)
                == number
        }

        static func getPerfectNumbers(numbers: [Int]) -> [Int] {
            return numbers
                .filter { $0 > 1 }
                .filter { self.isPerfect(number: $0) }
        }
    }
}
