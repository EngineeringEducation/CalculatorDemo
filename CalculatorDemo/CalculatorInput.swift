//
//  CalculatorInput.swift
//  CalculatorDemo
//
//  Created by Wren on 5/26/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import Foundation

enum CalculatorInput {
  case One, Two, Three, Four, Five, Six, Seven, Eight, Nine, Zero, Point, Equals, Plus, Minus, Multiply, Divide, Clear, Delete
}

extension Calculator {
  func input(input: CalculatorInput) {

    var inputString : String?

    switch (input) {
      case .One:
        inputString = "1"
      case .Two:
        inputString = "2"
      case .Three:
        inputString = "3"
      case .Four:
        inputString = "4"
      case .Five:
        inputString = "5"
      case .Six:
        inputString = "6"
      case .Seven:
        inputString = "7"
      case .Eight:
        inputString = "8"
      case .Nine:
        inputString = "9"
      case .Zero:
        inputString = "0"
      case .Point:
        inputString = "."
      case .Equals:
        inputString = "="
      case .Plus:
        inputString = "+"
      case .Minus:
        inputString = "-"
      case .Multiply:
        inputString = "*"
      case .Divide:
        inputString = "/"
      case .Clear:
        inputString = "C"
      case .Delete:
        inputString = "D"
    }

    self.input(inputString)
  }
}