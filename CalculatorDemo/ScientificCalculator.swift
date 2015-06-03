//
//  ScientificCalculator.swift
//  CalculatorDemo
//
//  Created by Wren on 6/1/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class ScientificCalculator: Calculator {

  var memoryValue = ""

  func storeValueToMemory() {
    // Store the value in the input area

    self.memoryValue = self.displayValue()
  }

  func retrieveValueFromMemory() {
    // Clear the current display
    self.input(.Clear)

    // Convert string into an array
    let memoryCharacters = Array(self.memoryValue)
    let memoryStrings = memoryCharacters.map({ character in
      return String(character)
    })

    for memoryString in memoryStrings {
      self.input(memoryString)
    }
  }
}
