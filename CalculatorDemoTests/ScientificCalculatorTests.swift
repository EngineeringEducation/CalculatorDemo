//
//  ScientificCalculatorTests.swift
//  CalculatorDemo
//
//  Created by Wren on 6/1/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit
import XCTest

class ScientificCalculatorTests: XCTestCase {

  var calc : ScientificCalculator!

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.

    self.calc = ScientificCalculator()
  }

  override func tearDown() {

    self.calc = nil

    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }


  func testMemoryStorage() {
    // Put stuff in the calc
    let value = calc.valueForSequenceOfInputs([ .One, .Two, .Six, .Nine ])

    // Get stuff from the calc into the calc memory
    calc.storeValueToMemory()

    // Check the calc memory and whether it matches the calc's value
    calc.retrieveValueFromMemory()

    let rememberedValue = calc.displayValue()

    XCTAssert(value == rememberedValue, "The value stored and retrieved from memory should match the original value that was stored.")
  }

}
