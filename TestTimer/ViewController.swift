//
//  ViewController.swift
//  TestTimer
//
//  Created by Kavisha on 12/03/20.
//  Copyright © 2020 Kavisha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testTimer()
    }
    
    func testTimer() {
        print("START - \(getDDMMYYYYHHmmss(Date()))")
        Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(onRestoreTimerUp),userInfo: nil, repeats: false)
        print("AFTER TIMER CALLED - \(getDDMMYYYYHHmmss(Date()))")
        
        processAddition()
    }
    
    @objc func onRestoreTimerUp() {
        print("Timer up at \(getDDMMYYYYHHmmss(Date()))")
    }
    
    func processAddition() {
        print("processAddition CALLED - \(getDDMMYYYYHHmmss(Date()))")
        let a = 1
        let b = 2
        let c = a + b
        print("Calculated c at \(getDDMMYYYYHHmmss(Date()))")
    }
    
    func getDDMMYYYYHHmmss(_ date: Date? = nil) -> String {
        guard let date = date else {return ""}
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        return dateFormatter.string(from: date as Date)
    }


}

