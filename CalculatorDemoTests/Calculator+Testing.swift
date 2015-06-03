//
//  Calculator+Testing.swift
//  CalculatorDemo
//
//  Created by Wren on 6/3/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

extension Calculator {
  func valueForSequenceOfInputs(inputs : [String]) -> String {
    for input in inputs {
      self.input(input)
    }
    return self.displayValue()
  }

  func valueForSequenceOfInputs(inputs : [CalculatorInput]) -> String {
    for input in inputs {
      self.input(input)
    }
    return self.displayValue()
  }

}