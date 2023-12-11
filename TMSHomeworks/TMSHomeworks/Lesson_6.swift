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
        
        //Функция вычисления факториала числа - через передачу массива в параметр функции. Массив из 6 чисел -> Факториал числа \(numbers), равен ????
        
        print("ЗАДАНИЕ 1")
        let array = [1, 5, 8, 10, 2, 6]
        
        func factorial(_ x: Int) -> Int {
            if x < 1 {
                return 1
            } else {
                return x * factorial(x-1)
            }
        }
        func arrayFactorial(array: [Int]) {
            var eachNumberFactorial = array.map{ factorial($0) }
            var arrayIndexCounter = 0
            for i in array {
                print("Факториал числа \(i), равен: \(eachNumberFactorial[arrayIndexCounter])")
                arrayIndexCounter += 1
            }
        }
        arrayFactorial(array: array)
        
        /*var x = [(1, "x"), (4, "y"), (6, «a»), (9, «u»), (5, «k»)]
         Массив из кортежей - возвести Int в квадрат
         отфильтровать только четные Int -> [4, 6]
         упорядочить по строкам по возрастанию -> [a, k, u, x, y]*/
        print("ЗАДАНИЕ 2")
        
        var x = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]
        
        func taskTwoArrayManipulations(_ x: [(Int, String)]) {
            var eachInt = x.map { $0.0 }
            var eachString = x.map { $0.1 }
            var squaredArray = eachInt.map { $0 * $0 }
            print("Цифры массива возведенные в квадрат: ", squaredArray)
            var oddArray = eachInt.filter { $0 % 2 == 0 }
            print("Четные цифры массива: ", oddArray)
            var filtredString = eachString.sorted(by: <)
            print("Буквы массива по возрастанию: ", filtredString)
        }
        taskTwoArrayManipulations(x)
        
        /*написать список книг и отфильтровать книги по жанрам -> horror = []
         var books = ["Book001": ["title": "Swift Programming", "author": "John Doe", "genre": "Programming"]]*/
        
        print("ЗАДАНИЕ 3")
        
        let books = [
            "Book001": ["title": "Swift Programming", "author": "John Doe", "genre": "Programming"],
            "Book002": ["title": "Scream", "author": "Kevin Williams", "genre": "Horror"],
            "Book003": ["title": "Hachi", "author": "Lasse Hallstrom", "genre": "Tragedy"],
            "Book004": ["title": "The ring", "author": "Gregor Verbinsky", "genre": "Horror"]
        ]
        
        //Объеденить 2 массива. первый массив это название групп. второй название песен
        print("ЗАДАНИЕ 4")
        
        
        /*[2, nil, 4, nil, 3, 8, nil] - не используя compactMap
         Создать функцию которая принимает массив чисел и умножает каждое число на 2 используя функцию map.*/
        print("ЗАДАНИЕ 5")
        var task3Array = [2, nil, 4, nil, 3, 8, nil]
        func doubleInt(array: [Int?]) {
            var finalArray = [Int]()
            var couting = 0
            for i in array {
                if let unwrapedI = i {
                    couting = unwrapedI * 2
                    finalArray.append(couting)
                } else {
                }
            }
            print(finalArray)
        }
        doubleInt(array: task3Array)
    }
}







