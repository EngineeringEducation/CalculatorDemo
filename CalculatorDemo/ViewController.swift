//
//  ViewController.swift
//  CalculatorDemo
//
//  Created by Wren on 5/26/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  lazy var calculator = Calculator()

  @IBOutlet weak var displayLabel: UILabel!

  @IBAction func didPressButton(sender: UIButton) {
    let input = CalculatorInput(rawValue: sender.tag)!
    self.calculator.input(input)
    self.updateDisplay()
  }

  func updateDisplay() {
    self.displayLabel.text = self.calculator.displayValue()
  }
}

