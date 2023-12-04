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
        
        // 1. Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций)
        
        func accordAction(_ a: Double,_ b: Double) -> Double {
            let res = a + b
            return res
        }
        func accordAction(_ a: Int,_ b: Int) -> Int {
            let res = a - b
            return res
        }
        func accordAction(_ a: Double,_ b: Double, c: Double) -> Double {
            let res = a * b
            return res
        }
        func accordAction(_ a: Int,_ b: Int, c: Int) -> Int {
            let res = a / b
            return res
        }
        
        print("Сумма чисел 4.12 и 6.93 = ", accordAction(4.12, 6.93))
        print("Разница чисел 9 и 12 = ",accordAction(9, 12))
        print("Произведение чисел 7.2, 14.09 и 29.34 = ",accordAction(7.2, 14.09, c: 29.34))
        print("Частное от деления чисел 99, 3 и 11 = ",accordAction(99, 3, c: 11))
        
        //2. Вычислить сумму цифр четырехзначного числа
        
        func digitSum(n : Int) -> Int {
            var m = n
            var sum = 0
            while m > 0 {
                sum += m % 10
                m /= 10
            }
            return sum
        }
        let number = 3424
        print("Сумма цифр числа \(number) = ", digitSum(n: number))
        
        //3. Функция сравнения строк - "авб" больше "ввш"
        
        let stringOne = "авб"
        let stringTwo = "ввш"
        
        func stringComparison(str1: String, str2: String) {
            if str1 > str2 {
                print("\(str1) больше \(str2)")
            } else {
                print("\(str2) больше \(str1)")
            }
        }
        
        print(stringComparison(str1: stringOne, str2: stringTwo))
        
        //4. Циклический вызов функций - поломать приложение
        
//        func brokenFunc(x: Int, y: Int) {
//            var error = x / y
//            brokenFunc(x: x, y: y)
//        }
//        print(brokenFunc(x: 3, y: 3))
        
        //5. Функция возведения в степень с дефолтным параметром
        
        let numberToExpon = 4.0
        let degree = 2
        
        func exponentation(number: Double, degree: Int) -> Double {
            var degreeStep = 2
            var resultNumber = number
            while degreeStep <= degree {
                resultNumber = resultNumber * number
                degreeStep += 1
            }
            return resultNumber
        }
        
        let exponentationResult = exponentation(number: numberToExpon, degree: degree)
        print("Число \(numberToExpon) возведенное в степень \(degree) = \(exponentationResult) ")
        
    }
}
