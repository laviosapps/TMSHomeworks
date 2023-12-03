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
        
        func sum(_ a: Double,_ b: Double) -> Double {
            let sum = a + b
            return sum
        }
        func sum(_ a: Int,_ b: Int) -> Int {
            let sum = a + b
            return sum
        }
        func substraction(_ a: Double,_ b: Double) -> Double {
            let sub = a - b
            return sub
        }
        func substraction(_ a: Int,_ b: Int) -> Int {
            let sub = a - b
            return sub
        }
        func multiplication(_ a: Double,_ b: Double) -> Double {
            let mult = a * b
            return mult
        }
        func multiplication(_ a: Int,_ b: Int) -> Int {
            let mult = a * b
            return mult
        }
        func division(_ a: Double,_ b: Double) -> Double {
            let div = a / b
            return div
        }
        func division(_ a: Int,_ b: Int) -> Int {
            let div = a / b
            return div
        }
        
        let numbersArray = [4,23.212]
        
        var sum = sum(numbersArray[0], numbersArray[1])
        var sub = substraction(numbersArray[0], numbersArray[1])
        var mult = multiplication(numbersArray[0], numbersArray[1])
        var div = division(numbersArray[0], numbersArray[1])
        
        print("Сумма чисел \(numbersArray[0]) и \(numbersArray[1]) = ", sum)
        print("Разница чисел \(numbersArray[0]) и \(numbersArray[1]) = ",sub)
        print("Произведение чисел \(numbersArray[0]) и \(numbersArray[1]) = ",mult)
        print("Частное чисел \(numbersArray[0]) и \(numbersArray[1]) = ",div)
        
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
