//
//  TraditionalStyleTests.swift
//  FunctionPracticeTests
//
//  Created by 李腾芳 on 2018/9/11.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//

@testable import FunctionPractice
import XCTest

class TraditionalStyleTests: XCTestCase {
    let userNameList = "neil,Nok,y,fitch,nonth,kira,p,o".split(separator: ",").map { String($0) }
    let expectResult = "Neil,Nok,Fitch,Nonth,Kira"

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTraditionalStyle_filterUserName() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let calculateResult = UserNameFilter.TraditionalStyle.filterUserName(userNameList)
        XCTAssert(expectResult == calculateResult)
    }

    func testFunctionStyle_filterUserName() {
        let calculateResult = UserNameFilter.FunctionStyle.filterUserName(userNameList)
        XCTAssert(expectResult == calculateResult)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
