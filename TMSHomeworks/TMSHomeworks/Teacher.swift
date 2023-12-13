//
//  Teacher.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [String]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    // Метод для добавления предмета, который ведет учитель
    
    func addSubjectTaught(subjectName: String) {
        subjectsTaught.append(subjectName)
    }
    
    // Метод для установки оценки ученику по определенному предмету
    
    func setGrade(studentName: Student, subjectName: String, grade: String) {
        studentName.addSubjectAndGrade(subjectName: subjectName, grade: grade)
    }
    
    // Метод для получения информации об учителе и предметах, которые он ведет
    
    func teacherInfoPrint() {
        print("""
        ID учителя: \(id)
        Имя учителя: \(firstName) \(lastName)
        Предмет, который ведет: \(subjectsTaught)
        Студент: \(studentsTaught).
        """)
    }
}
