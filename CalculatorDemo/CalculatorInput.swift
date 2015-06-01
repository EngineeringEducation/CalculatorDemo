//
//  CalculatorInput.swift
//  CalculatorDemo
//
//  Created by Wren on 5/26/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import Foundation

enum CalculatorInput: Int {
  case One = 1,
  Two = 2,
  Three = 3,
  Four = 4,
  Five = 5,
  Six = 6,
  Seven = 7,
  Eight = 8,
  Nine = 9,
  Zero = 0,
  Point = 10,
  Equals = 11,
  Plus = 12,
  Minus = 13,
  Multiply = 14,
  Divide = 15,
  Clear = 16,
  Delete = 17
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