//
//  CalculatorDemoTests.swift
//  CalculatorDemoTests
//
//  Created by Wren on 5/26/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit
import XCTest

class CalculatorDemoTests: XCTestCase {

  var calc : Calculator!

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.

    calc = Calculator()
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()

    calc = nil
  }

  func valueForSequenceOfInputs(inputs : [String]) -> String {
    for input in inputs {
      calc.input(input)
    }
    return calc.displayValue()
  }

  func testOnePlusOne() {

    let result = valueForSequenceOfInputs(["1", "+", "1", "="])

    XCTAssert(result == "2", "One plus one should equal two.")
  }

  func testOneMinusOne() {

    let result = valueForSequenceOfInputs(["1", "-", "1", "="])

    XCTAssert(result == "0", "One minus one should equal zero.")
  }

  // Delete

  // Multiplication

  // Division

  // Decimal

  // Clear

  // Chaining Operations

  // Negative

  // Overflow

  //

}
