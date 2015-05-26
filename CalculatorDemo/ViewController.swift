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
    self.calculator.input(sender.titleLabel?.text)
    self.updateDisplay()
  }

  func updateDisplay() {
    self.displayLabel.text = self.calculator.displayValue()
  }
}

