//
//  LogicTests.swift
//  FizzBuzz
//
//  Created by Yusuke Wada on 2016/04/19.
//  Copyright © 2016年 Yusuke Wada. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class LogiTests: XCTestCase {
    func testFizzBuzz() {
        let logic: Logic = Logic()
        XCTAssertEqual(logic.fizzbuzz(1), "1")
        XCTAssertEqual(logic.fizzbuzz(2), "2")
        XCTAssertEqual(logic.fizzbuzz(3), "Fizz")
        XCTAssertEqual(logic.fizzbuzz(5), "Buzz")
        XCTAssertEqual(logic.fizzbuzz(15), "FizzBuzz")
    }
}
