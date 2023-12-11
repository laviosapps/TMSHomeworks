//
//  Student.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Student {
    private var id: Int
    private var name: String
    private var lastName: String
    private var age: Int
    private var subjects: [Subject]
    private var teacher: Teacher?
    
    init(id: Int, name: String, lastName: String, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
    }
    
    // Метод для добавления предмета
    func addSubject(newSubject: Subject) {
        subjects.append(newSubject)
    }
    // Метод для установки возраста студента
    
    func addAge(ageSet: Int) {
        age = ageSet
    }
    // Метод для установки имени студента
    
    func studentName(nameSet: String) {
        name = nameSet
    }
    // Метод для связывания студента с учителем
    
    func assignTeacher(teacherAssigned: Teacher) {
        teacher = teacherAssigned
    }
    
    // Метод для получения информации о студенте и его предметах
    
    func studentInfo() {
        print("""
        ID студента: \(id)
        Имя студента: \(name)
        Фамилия студента: \(lastName)
        Предмет: , оценка: , поставил:
        """)
    }
}
