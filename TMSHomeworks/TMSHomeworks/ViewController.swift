//
//  ViewController.swift
//  TMSHomeworks
//
//  Created by Aliaksandr Liakh on 27.11.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [2.5, 9.7, 6.9, 8.2]
        var intSum = 0
        var fractSum = 0
        
        for i in array {
            let eachNumberInt = Int(i)
            intSum += eachNumberInt
            let numberString = String(i)
            let numberComponent = numberString.components(separatedBy :".")
            let fractionalNumber = Int(numberComponent [1]) ?? 0
            fractSum += fractionalNumber
        }
        print("Сумма целых частей равна \(intSum)")
        if intSum % 2 == 0 {
            print("и это число четное")
        } else {
            print("и это число не четное")
        }
        
        print("Сумма дробных частей равна \(fractSum)")
        if fractSum % 2 == 0 {
            print("и это число четное")
        } else {
            print("и это число не четное")
        }
    }


}

