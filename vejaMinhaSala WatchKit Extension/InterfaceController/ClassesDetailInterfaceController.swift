//
//  ClassesInterfaceController.swift
//  vejaMinhaSala WatchKit Extension
//
//  Created by Hélio Mesquita on 10/12/18.
//  Copyright © 2018 Hélio Mesquita. All rights reserved.
//

import WatchKit
import Foundation

class ClassesDetailInterfaceController: WKInterfaceController {

  var subject: Subject?

  @IBOutlet weak var weekDayLabel: WKInterfaceLabel!
  @IBOutlet weak var subjectLabel: WKInterfaceLabel!
  @IBOutlet weak var classNumberLabel: WKInterfaceLabel!
  @IBOutlet weak var startLabel: WKInterfaceLabel!
  @IBOutlet weak var endLabel: WKInterfaceLabel!
  @IBOutlet weak var professorLabel: WKInterfaceLabel!

  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
    if let subject = context as? Subject {
      self.subject = subject
    }

    weekDayLabel.setText(subject?.weekDay)
    subjectLabel.setText(subject?.subject)
    classNumberLabel.setText(subject?.classRoom)
    startLabel.setText(subject?.startTime)
    endLabel.setText(subject?.endTime)
    professorLabel.setText(subject?.professor)
  }

}
