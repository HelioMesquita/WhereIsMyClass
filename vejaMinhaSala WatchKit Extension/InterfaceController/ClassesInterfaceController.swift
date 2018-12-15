//
//  ClassesInterfaceController.swift
//  vejaMinhaSala WatchKit Extension
//
//  Created by Hélio Mesquita on 10/12/18.
//  Copyright © 2018 Hélio Mesquita. All rights reserved.
//

import WatchKit
import Foundation

class ClassesInterfaceController: WKInterfaceController {

  @IBOutlet var tableView: WKInterfaceTable!

  var subjects: [Subject] = [] {
    didSet {
      loadTable()
    }
  }

  override func willActivate() {

  }


  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
    guard let academicRegister = context as? String else { return }
    var request = URLRequest(url: URL(string: "https://wormhole-eniac.herokuapp.com/classes/" + academicRegister)!)
    request.cachePolicy = URLRequest.CachePolicy.reloadIgnoringLocalCacheData
    URLSession.shared.dataTask(with: request) { (data, response, error) in
      guard let data = data else { return }
      do {
        let apiSubjects = try JSONDecoder().decode(Subjects.self, from: data)
        self.subjects = apiSubjects.subjects
      } catch {
        print(error)
      }
    }.resume()
  }

  func loadTable() {
    tableView.setNumberOfRows(subjects.count, withRowType: "ClassRowController")

    for (index, rowModel) in subjects.enumerated() {
      if let rowController = tableView.rowController(at: index) as? ClassRowController {
        rowController.classNumberLabel.setText(rowModel.classRoom)
        rowController.weekDayLabel.setText(rowModel.weekDay)
      }
    }
  }

  override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
    pushController(withName: "ClassesDetailInterfaceController", context: subjects[rowIndex])
  }
}
