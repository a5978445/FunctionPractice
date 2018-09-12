//
//  FindPerfectNumberTests.swift
//  FunctionPracticeTests
//
//  Created by 李腾芳 on 2018/9/11.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//
@testable import FunctionPractice
import XCTest

class FindPerfectNumberTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFindPerfectNumber_TraditionalStyle() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let range = 0 ... 1000
        let sourceNumbers = range.map { $0 }

        let result0 = FindPerfectNumber.TraditionalStyle.getPerfectNumbers(numbers: sourceNumbers)
        let result1 = FindPerfectNumber.FunctionStyle.getPerfectNumbers(numbers: sourceNumbers)

        XCTAssert(result0 == result1)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
