//
//  InterfaceController.swift
//  vejaMinhaSala WatchKit Extension
//
//  Created by Hélio Mesquita on 10/12/18.
//  Copyright © 2018 Hélio Mesquita. All rights reserved.
//

import WatchKit
import Foundation

class LoginInterfaceController: WKInterfaceController {

  var academicRegister = "" {
    didSet {
      academicRegisterLabel.setText(academicRegister)
    }
  }

  @IBOutlet weak var academicRegisterLabel: WKInterfaceLabel!

  @IBAction func oneTapped()    { academicRegister.append("1") }
  @IBAction func twoTapped()    { academicRegister.append("2") }
  @IBAction func threeTapped()  { academicRegister.append("3") }
  @IBAction func fourTapped()   { academicRegister.append("4") }
  @IBAction func fiveTapped()   { academicRegister.append("5") }
  @IBAction func sixTapped()    { academicRegister.append("6") }
  @IBAction func sevenTapped()  { academicRegister.append("7") }
  @IBAction func eightTapped()  { academicRegister.append("8") }
  @IBAction func nineTapped()   { academicRegister.append("9") }
  @IBAction func zeroTapped()   { academicRegister.append("0") }

  @IBAction func okTapped() {
    pushController(withName: "ClassesInterfaceController", context: academicRegister)
  }

  @IBAction func deleteTapped() {
    if !academicRegister.isEmpty {
      academicRegister.removeLast()
    }
  }
}
